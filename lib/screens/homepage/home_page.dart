import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saferider/screens/bottom_navigation_bar//bottom_navigation_bar.dart';
import 'package:saferider/components/reusablecard.dart';
import 'package:saferider/constants/texts.dart';
import 'package:saferider/screens/paybills/paybills.dart';
import 'package:saferider/screens/paybills/paybills_view_model.dart';
import 'package:saferider/screens/sendmoney/send_money.dart';
import 'package:saferider/screens/withdraw/withdrawal.dart';
import 'package:saferider/components/wallet_with_text.dart';
import 'package:saferider/utilities/navigator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white70,
        body: TabBarView(
          physics:
              NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          controller: _tabController,
          children: <Widget>[
            Center(
              child: Text("Dashboard"),
            ),
            Container(
              color: Colors.white60,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Good Morning, Anita!',
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
                            padding:
                                const EdgeInsets.only(left: 12.0, top: 12.0),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  WalletWithText(
                                    ontap: () {
                                      pushNamedNav(context, 'pay');
                                    },
                                    intent: 'Pay',
                                    icon: FontAwesomeIcons.arrowRotateRight,
                                  ),
                                  WalletWithText(
                                    ontap: () {
                                      pushNamedNav(context, 'sendmoney');
                                    },
                                    intent: 'Send Money',
                                    icon: FontAwesomeIcons.arrowRight,
                                  ),
                                  WalletWithText(
                                    ontap: () {
                                      pushNamedNav(context, 'withdraw');
                                    },
                                    intent: 'Withdraw',
                                    icon: FontAwesomeIcons.arrowUp,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.description,
                                        color: Colors.blueGrey[300],
                                        size: 28.0,
                                      ),
                                      Text(
                                        'Transactions',
                                        style: kTextw500black,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Card(
                                  color: Colors.teal[500],
                                  child: Container(
                                    height: 45.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.wallet,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          'DEPOSIT MONEY',
                                          style: kText16white,
                                        )
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
                          Expanded(
                              child: ReusableCard(
                            ontap: () {
                              pushNamedNav(context, 'saferide');
                            },
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/car.png',
                                  width: 130.0,
                                  height: 80,
                                ),
                                Text(
                                  'Order a SafeRide',
                                  style: kTextw500black,
                                )
                              ],
                            ),
                          )),
                          SizedBox(width: 10.0),
                          Expanded(
                              child: ReusableCard(
                            ontap: () {
                              pushNamedNav(context, 'safebike');
                            },
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/bike.png',
                                  width: 130.0,
                                  height: 80,
                                ),
                                Text(
                                  'Order a SafeBike',
                                  style: kTextw500black,
                                )
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
                          Expanded(
                              child: ReusableCard(
                            ontap: () {
                              pushNamedNav(context, 'delivery');
                            },
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/delivery.png',
                                  width: 130.0,
                                  height: 80,
                                ),
                                Text(
                                  'Deliver Package',
                                  style: kTextw500black,
                                )
                              ],
                            ),
                          )),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: ReusableCard(
                            ontap: () {
                              pushNamedNav(context, 'paybills');
                            },
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/paybills.png',
                                  width: 60.0,
                                  height: 80,
                                ),
                                Text(
                                  'Pay Bills',
                                  style: kTextw500black,
                                )
                              ],
                            ),
                          )),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: ReusableCard(
                            ontap: () {
                              pushNamedNav(context, 'airtimedata');
                            },
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/airtimeanddata.png',
                                  width: 130.0,
                                  height: 80,
                                ),
                                Text(
                                  'Airtime & Data',
                                  style: kTextw500black,
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Patronize my Business',
                        style: kText16black,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardchild: Row(
                          children: [
                            Container(
                                height: double.infinity,
                                width: 90,
                                child: Image.asset(
                                  'assets/images/waistbeads.jpg',
                                  fit: BoxFit.fill,
                                )),
                            Container(
                                height: double.infinity,
                                width: 100,
                                child: Image.asset(
                                  'assets/images/waistbead2.jpg',
                                  fit: BoxFit.fill,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Waistbeads',
                                    style: kTextw500black,
                                  ),
                                  Text(
                                      'Waistbeads helps to \n accessorise and \n beautify the waist.')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text("Profile"),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          ontabSelectedItem: (int value) {
            setState(() {
              _tabController.index = value;
            });
          },
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
