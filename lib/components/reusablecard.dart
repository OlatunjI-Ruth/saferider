import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key, this.cardchild
  });

  final Widget? cardchild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Material(
        color: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        child: Container(
            child: cardchild
        ),
      ),
    );
  }
}
