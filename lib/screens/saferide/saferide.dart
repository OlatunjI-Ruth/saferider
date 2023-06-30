import 'package:flutter/material.dart';
import 'package:saferider/components/roundedbutton.dart';
import 'package:saferider/screens/bottomsheet/bottomsheet.dart';
import 'package:saferider/utilities/navigator.dart';

class SafeRide extends StatefulWidget {
  const SafeRide({Key? key}) : super(key: key);

  @override
  State<SafeRide> createState() => _SafeRideState();
}

class _SafeRideState extends State<SafeRide> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          popNav(context);
        },
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
      bottomSheet: CustomBottomSheet()
    );
  }
}
