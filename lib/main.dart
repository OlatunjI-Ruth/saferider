import 'package:flutter/material.dart';
import 'package:saferider/screens/airtime/airtime.dart';
import 'package:saferider/screens/auth/signup.dart';
import 'package:saferider/screens/delivery/delivery.dart';
import 'package:saferider/screens/homepage/home_page.dart';
import 'package:saferider/screens/orders/orders.dart';
import 'package:saferider/screens/paybills/paybills.dart';
import 'package:saferider/screens/safebike/safebike.dart';
import 'package:saferider/screens/saferide/saferide.dart';
import 'package:saferider/screens/sendmoney/send_money.dart';
import 'package:saferider/screens/withdraw/withdrawal.dart';

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
      initialRoute: 'signup',
        debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context)=>HomePage(),
        'signup' : (context)=>SignUp(),
        'homepage': (context)=>HomePage(),
        'pay':(context)=>PayBills(),
        'sendmoney':(context)=>SendMoney(),
        'withdraw':(context)=>WithdrawalPage(),
        // 'deposit':(context)=>PayBills(),
        // 'transactions':(context)=>PayBills(),
        'saferide':(context)=>SafeRide(),
        'safebike':(context)=>SafeBike(),
        'delivery':(context)=>Delivery(),
        'paybills':(context)=>PayBills(),
        'airtimedata':(context)=>AirtimeAndData(),
        'orders':(context)=>Orders(),
        'chats':(context)=>PayBills(),
        'pay':(context)=>PayBills(),
      },
    );
  }
}