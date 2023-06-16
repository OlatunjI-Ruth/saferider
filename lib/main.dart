import 'package:flutter/material.dart';
import 'package:saferider/screens/homepage/home_page.dart';

void main() {
  runApp(const SafeRider());
}

class SafeRider extends StatelessWidget {
  const SafeRider({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
        debugShowCheckedModeBanner: false
    );
  }
}