import 'package:flutter/material.dart';

class AnimationSheet extends StatefulWidget {
  const AnimationSheet({Key? key}) : super(key: key);

  @override
  State<AnimationSheet> createState() => _AnimationSheetState();
}

class _AnimationSheetState extends State<AnimationSheet> {
  double _percent = 0.0;
  bool isDragged = false;
  double initialHeight = 0.0;


  checkStateDragged() {
    if (_percent > 0.5) {
      setState(() {
        isDragged = true;
      });
    } else {
      setState(() {
        isDragged = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // handle hiding disabled search field
    checkStateDragged();
    return Container(
      child: Stack(
        children: [
          /* draggable scrollable sheet*/
          Positioned.fill(
            child: NotificationListener<DraggableScrollableNotification>(
              onNotification: (notification) {
                setState(() {
                  _percent = 2 * notification.extent - 0.8;
                });
                return true;
              },
              child: DraggableScrollableSheet(
                maxChildSize: 0.9,
                minChildSize: 0.4,
                initialChildSize: 0.4,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Material(
                    elevation: 10.0,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15.0),
                          Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(horizontal: 120.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          !isDragged
                              ? GestureDetector(
                            onTap: () {
                              setState(() {
                                _percent = 1.0;
                              });
                            },
                            child: Card(
                              color: Colors.grey[100],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: 15.0,
                                      child: const Icon(
                                        Icons.search,
                                        size: 25,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(width: 10.0,),
                                    const Text(
                                      'Where to?',
                                      style: TextStyle(
                                          fontSize: 17, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                              : Container(),
                          Expanded(
                            child: ListView.builder(
                              controller: scrollController,
                              padding:  const EdgeInsets.only(bottom: 40.0, left: 10.0),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return  Column(
                                  children: const [
                                    ListTile(
                                      visualDensity: VisualDensity(vertical: -4),
                                      horizontalTitleGap: 0.0,
                                      minVerticalPadding: 0.0,
                                      contentPadding: EdgeInsets.zero,
                                      leading: Icon(Icons.access_time_outlined
                                      ),
                                      title: Text(
                                        '8b Adebajo Street',
                                      ),
                                      subtitle: Text(
                                        'Ibadan 200212',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      indent: 2.0,
                                      thickness: 1.0,
                                      endIndent: 2.0,
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          /* search destination */
          Positioned(
            left: 0.0,
            right: 0.0,
            top: -180 * (1 - _percent),
            child: Opacity(
              opacity: _percent,
              child: const SearchDestination(),
            ),
          ),

          /* select destination on map */
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: -50 * (1 - _percent),
            child: Opacity(
              opacity: _percent,
              child: const PickOnMap(),
            ),
          ),
        ],
      ),
    );
  }
}

// search destination sheet
class SearchDestination extends StatelessWidget {
  const SearchDestination({Key? key}) : super(key: key);
  final String currentLocation = '1 Aminu Olaniran';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            titleSpacing: 10.0,
            leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear,
                  color: Colors.black87,)
            ),
            title: const Text(
              'Select destination',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '$currentLocation',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 10.0),
                //  destination
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Where are you going",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// select destination on map
class PickOnMap extends StatelessWidget {
  const PickOnMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.place_sharp,
                color: Colors.purple,
              ),
              SizedBox(width: 30.0),
              Text(
                "Choose on map",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}