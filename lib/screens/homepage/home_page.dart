import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(color: Colors.white,
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(5.0,40.0,5.0,0.0 ),
        child: Column(
          children:  [
            const Padding(
              padding:  EdgeInsets.only(left: 10.0),
              child:  Text('Good Morning, Anita', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
            SizedBox(height: 10.0,),
            Container(height: 100.0, decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(11), topRight: Radius.circular(11)), color: Colors.deepOrange,),),
            Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(11), topRight: Radius.circular(11)),color: Colors.white),),),
            SizedBox(height: 10.0,),
            Text('Our Services', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            SizedBox(height: 10.0,),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red,)),
                  SizedBox(width: 10.0,),
                  Expanded(child: Container(color: Colors.white70,))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.white70,)),
                  SizedBox(width: 10.0,),
                  Expanded(child: Container(color: Colors.white,)),
                  SizedBox(width: 10.0,),
                  Expanded(child: Container(color: Colors.white,))
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Text('Discover SafeRider'),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    ),
    );
  }
}
