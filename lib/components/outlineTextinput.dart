import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomOutlineTextField extends StatelessWidget {
  const CustomOutlineTextField({
    Key? key,
    this.onChanged,
    this.hintText,
    this.label,
    this.fillCenter = true,
    this.isEnabled = true,
    this.textEditingController,
    this.inputRadius = 8.0
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String? hintText;
  final Widget? label;
  final bool fillCenter;
  final bool isEnabled;
  final double inputRadius;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      // cursorHeight: 30.0,
      onChanged: onChanged,
      textAlign: TextAlign.start,
      controller: textEditingController,
      enabled: isEnabled,
      decoration: InputDecoration(
        suffixIcon: IconButton( onPressed: (){},
          icon: RotatedBox(quarterTurns: 3,child: Icon(Icons.arrow_back_ios_rounded, color: Colors.purple[800],))),
        alignLabelWithHint: true,
        label: label,
        labelStyle: TextStyle(color: Colors.purple[800], fontSize: 18.0,),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400, color: Colors.black, fontSize: 19.0,),
        contentPadding: const EdgeInsets.only(bottom: 16.0, left: 15, top: 16.0),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(inputRadius as double)),
          borderSide: const BorderSide(
              color: Colors.black12,
              width: 0.5
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(inputRadius as double)),
          borderSide: const BorderSide(
              color: Colors.deepPurple,
              width: 2.0
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(inputRadius as double)),
            borderSide:  BorderSide(
                color: Colors.purple[800]!,
                width: 2.0
            )
        ),
      ),
      // textCapitalization: TextCapitalization.words,
    );
  }
}
