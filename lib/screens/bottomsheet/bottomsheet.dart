import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return BottomSheet(
        // animationController: AnimationController(vsync: this),
        enableDrag: false,
        constraints: BoxConstraints(
            minHeight: 250, maxHeight: 400, minWidth: double.infinity),
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        onClosing: () {},
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0,top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 15.0),
                Container(
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(horizontal: 120.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                const SizedBox(height: 15.0),
                     GestureDetector(
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
                ),
                Expanded(
                  child: ListView.builder(
                    padding:  const EdgeInsets.only(bottom: 40.0, left: 10.0),
                    itemCount: 4,
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
          );
        });
  }
}
