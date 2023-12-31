import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saferider/components/reusablecard.dart';
import 'package:saferider/constants/texts.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,
            )),
        title: Text('Withdraw',
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.storefront, color:Colors.deepOrange[300], size: 80),
                        Text('Agent', style: kText16black,)
                      ],
                    ),
                  )),
              SizedBox(width: 20.0,),
              Expanded(child: ReusableCard(
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(FontAwesomeIcons.buildingColumns,color:Colors.deepOrange[300], size: 60),
                    Text('Bank', style: kText16black,)
                  ],
                ),
              ))
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                    cardchild:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                          Icon(Icons.phone_android_rounded, color:Colors.deepOrange[300], size: 90),
                          FaIcon(FontAwesomeIcons.moneyBill, color: Colors.deepOrange[300], size: 40,)
                        ],),
                        Text('Mobile Money', style: kText16black,)
                      ],
                    ),
                  )),
                  SizedBox(width: 20.0,),
                  Expanded(child: SizedBox(),),
                ],
              ),
            ),
            //
            Expanded(child: SizedBox()),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
