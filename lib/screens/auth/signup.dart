import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saferider/components/roundedbutton.dart';
import 'package:saferider/constants/texts.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: ListView(
          children: [
            Text(
              'Safe Rider',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    onChanged: (text) {},
                    controller: _fullnameController,
                    fieldLabel: 'Full name',
                  ),
                  SizedBox(height: 15.0),
                  CustomTextFormField(
                    onChanged: (text) {},
                    controller: _emailController,
                    fieldLabel: 'Email address',
                  ),
                  SizedBox(height: 15.0),
                  CustomTextFormField(
                      onChanged: (text) {},
                      controller: _phonenumberController,
                      fieldLabel: 'Phone number'),
                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: () async {
                      DateTime? startPickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime(2002),
                          firstDate: DateTime(1960),
                          lastDate: DateTime(2020));
                      String formattedDate =
                          '${startPickedDate!.day}-${startPickedDate.month}-${startPickedDate.year}';
                      _dobController.text = formattedDate;
                      // return _dobController.text;
                    },
                    child: CustomTextFormField(
                      onChanged: (text) {},
                      controller: _dobController,
                      fieldLabel: 'Date of birth',
                      enabled: false,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  CustomTextFormField(
                    onChanged: (text) {},
                    controller: _locationController,
                    fieldLabel: 'Location',
                    enabled: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  CustomTextFormField(
                      onChanged: (text) {},
                      controller: _genderController,
                      fieldLabel: 'Gender'),
                  SizedBox(height: 15.0),
                  CustomTextFormField(
                      onChanged: (text) {},
                      controller: _passwordController,
                      fieldLabel: 'Password'),
                  SizedBox(height: 20.0),
                  RoundedButton(
                    onPress: () {},
                    buttoncolor: Colors.deepOrange,
                    buttonchild: Text(
                      'Register',
                      style: kTextw500white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.controller,
      this.fieldLabel,
      this.icon,
      this.enabled,
      this.onChanged});

  final TextEditingController? controller;
  final String? fieldLabel;
  final Widget? icon;
  final bool? enabled;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(50)],
      cursorColor: Colors.black,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        // hintText: 'Full Name',
        // hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        labelText: fieldLabel,
        labelStyle: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 17.0),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.black,
                width: 2.0)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.black,
                width: 2.0)),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.black,
              width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.black,
              width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black, width: 2.0)),
        filled: true,
        fillColor: Colors.transparent,
        suffixIcon: icon,
      ),
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: enabled,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return "Text field can\'t be empty";
        }
        if (text.length < 4 || text.length > 49) {
          return "please enter a valid response";
        }
      },
    );
  }
}
