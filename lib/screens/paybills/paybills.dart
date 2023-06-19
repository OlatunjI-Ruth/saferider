import 'package:flutter/material.dart';
import 'package:saferider/components/reusablecard.dart';
import 'package:saferider/constants/texts.dart';

class PayBills extends StatelessWidget {
  const PayBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.deepOrange,
        ),
        title: const Text(
          'Pay Bills',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bill Type',
              style: kTextw500black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Water', style: kTextw500black,),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: Row(
                          children: const [
                            Expanded(child: ReusableCard()),
                            SizedBox(width: 10.0,),
                            Expanded(child: SizedBox()),
                            SizedBox(width: 10.0,),
                            Expanded(child: SizedBox()),
                            SizedBox(width: 10.0,),
                            Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Electricity', style: kTextw500black,),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: Row(
                        children: const [
                          Expanded(child: ReusableCard()),
                          SizedBox(width: 10.0,),
                          Expanded(child: ReusableCard()),
                          SizedBox(width: 10.0,),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10.0,),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('TV', style: kTextw500black,),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: Row(
                        children: const [
                          Expanded(child: ReusableCard()),
                          SizedBox(width: 10.0,),
                          Expanded(child: ReusableCard()),
                          SizedBox(width: 10.0,),
                          Expanded(child: ReusableCard()),
                          SizedBox(width: 10.0,),
                          Expanded(child: ReusableCard()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
