import 'package:flutter/material.dart';
import 'package:saferider/components/outlineTextinput.dart';
import 'package:saferider/components/reusablecard.dart';
import 'package:saferider/components/roundedbutton.dart';
import 'package:saferider/constants/texts.dart';


class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.purple[800],)),
        title: Text('Extend my loan', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding:  EdgeInsets.only(top: 30.0, left: 10.0, right: 25.0),
               child: Text('We have loan extension offers for you!', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21.0),),
             ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Select any of the offers to extend your loan', style: TextStyle(color: Colors.grey[600]),),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding:  EdgeInsets.only(right: 15.0, left: 10.0),
              child: CustomOutlineTextField(
                label: Text('Loan extensions offers'),
                hintText: '15-day extension',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.white,
              elevation: 2.0,
              child: Container(
                height: 55.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(children: [
                    Text('Loan payment plan (3 months)', style: TextStyle(color: Colors.purple[600], fontWeight: FontWeight.w600,fontSize: 15.0)),
                    SizedBox(width: 70.0,),
                    RotatedBox(quarterTurns:2, child: Icon(Icons.arrow_back_ios_rounded, color: Colors.purple[800],size: 15.0,fill: 1.0,))
                  ],),
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              child: RoundedButton(
              ),
            )
          ],
        ),
      ),
    );
  }
}
