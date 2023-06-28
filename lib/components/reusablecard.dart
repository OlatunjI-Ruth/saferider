import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
   const ReusableCard({
    super.key, this.cardchild, this.ontap
  });
  final Widget? cardchild;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
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
