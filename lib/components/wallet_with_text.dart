import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badge;



class WalletWithText extends StatelessWidget {
  const WalletWithText({super.key, this.intent, this.ontap, this.icon});
  final String? intent;
  final void Function()? ontap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        badge.Badge(
          badgeContent: FaIcon(icon, color: Colors.white,size: 12.0,),
          child: FaIcon(FontAwesomeIcons.creditCard, color: Colors.blueGrey[400],),
          badgeStyle: badge.BadgeStyle(badgeColor: Colors.blueGrey),
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
