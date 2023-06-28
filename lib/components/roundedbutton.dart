import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
        this.onPress,
        this.isLoading = false,
        this.textStyleColor,
        this.height});

  final void Function()? onPress;
  final Color? textStyleColor;
  final double? height;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Material(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 1.0,
        child: MaterialButton(
          onPressed:() {},
          height:20.0,
            minWidth: double.infinity,
          child: Text(
            'Pay #11,000 to extend my loan',
              style: TextStyle( fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)
          )
        ),
      ),
    );
  }
}
