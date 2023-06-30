import 'package:flutter/material.dart';

class AnimatedBottomSheet extends StatefulWidget {
  const AnimatedBottomSheet({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomSheet> createState() => _AnimatedBottomSheetState();
}

class _AnimatedBottomSheetState extends State<AnimatedBottomSheet> {

  bool _showSecond = false;
  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.height - 500),
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
  }
}
