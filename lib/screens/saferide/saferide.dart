import 'package:flutter/material.dart';
import 'package:saferider/components/roundedbutton.dart';

class SafeRide extends StatefulWidget {
  const SafeRide({Key? key}) : super(key: key);

  @override
  State<SafeRide> createState() => _SafeRideState();
}

class _SafeRideState extends State<SafeRide> {
  bool _showSecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.arrow_back,
          color: Colors.deepOrange,
          size: 30.0,
          weight: 20.0,
        ),
        backgroundColor: Colors.white,
        elevation: 2.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomSheet: BottomSheet(
          // elevation: 10.0,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30) )
          // ),
          onClosing: () {},
          builder: (BuildContext context) {
            return AnimatedContainer(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              duration: Duration(milliseconds: 400),
              child: AnimatedCrossFade(
                  firstChild: Container(
                    constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height - 400),
//remove constraint and add your widget hierarchy as a child for first view
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () => setState(() => _showSecond = true),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(28.0)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Suivant"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  secondChild: Container(
                    constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height / 3),
//remove constraint and add your widget hierarchy as a child for second view
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () => setState(() => _showSecond = false),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(28.0)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("ok"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  crossFadeState: _showSecond
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: Duration(milliseconds: 400)
              ),
            );
          }),
    );
  }
}
