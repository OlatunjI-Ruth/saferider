import 'package:flutter/material.dart';
import 'package:saferider/components/reusablecard.dart';
import 'package:saferider/constants/texts.dart';
import 'package:saferider/screens/paybills/paybills.dart';
import 'package:saferider/screens/paybills/paybills_view_model.dart';
import 'package:saferider/screens/withdraw/withdrawal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Good Morning, Anita',
                  style: kText18,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.zero,
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                ),
                child: Column(children: [
                  Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            topRight: Radius.circular(11)),
                        color: Colors.deepOrange),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'My Wallet',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.info,
                                color: Colors.white,
                                size: 18.0,
                              )
                            ],
                          ),
                          // SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Text(
                                'NGN',
                                style: kText18white,
                              ),
                              Icon(
                                Icons.more_horiz,
                                size: 30,
                                color: Colors.white,
                              ),
                              // Icon(Icons.more_horiz,size: 30, color: Colors.white,)
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            WalletWithText(
                              ontap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (Context)=>PayBills()));
                              },
                              intent: 'Pay',
                              icon: Icons.arrow_circle_right,
                            ),
                            WalletWithText(
                              ontap: (){},
                              intent: 'Send Money',
                              icon: Icons.arrow_circle_right,
                            ),
                            WalletWithText(
                              ontap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawalPage()));
                              },
                              intent: 'Withdraw',
                              icon: Icons.arrow_circle_right,
                            ),
                            Column(
                              children: [
                                Icon(Icons.description, color: Colors.blueGrey[300],size: 28.0,),
                                Text('Transactions', style: kTextw500black,)
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Card(
                            color: Colors.teal[500],
                            child: Container(
                              height: 45.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.wallet, color: Colors.white, size: 30,),
                                  SizedBox(width: 10.0,),
                                  Text('DEPOSIT MONEY', style: kText16white,)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Our Services',
                  style: kText16black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.h_mobiledata),
                          Text('Order a SafeRide', style: kTextw500black,)
                        ],
                      ),
                    )),
                    SizedBox(width: 10.0),
                    Expanded(child: ReusableCard(
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.h_mobiledata),
                            Text('Order a SafeBike', style: kTextw500black,)
                          ],
                        ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: ReusableCard()),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(child: ReusableCard()),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(child: ReusableCard())
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Discover SafeRider',
                  style: kText16black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                cardchild: Container(
                  height: 70,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 50.0,
              )
              // BottomNavigationBar(items: [
              //
              // ])
            ],
          ),
        ),
      ),
    );
  }
}

class WalletWithText extends StatelessWidget {
  const WalletWithText({super.key, this.intent, this.ontap, this.icon});
  final String? intent;
  final void Function()? ontap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Icon(
              Icons.credit_card_rounded,
              color: Colors.blueGrey[300],
              size: 28.0,
            ),
            Positioned(
              child: Icon(icon,size: 20.0,color: Colors.blueGrey,),
              left: 8.0,
              top:-1.0,
            ),
          ],
        ),
        GestureDetector(
            onTap: ontap,
            child: Text(
              intent!,
              style: TextStyle(fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
