import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';


class BottomNavBar extends StatelessWidget {
 const  BottomNavBar({Key? key, this.ontabSelectedItem}) : super(key: key,);

 final void Function(int)? ontabSelectedItem;

  @override
  Widget build(BuildContext context) {
    return  MotionTabBar(
      initialSelectedTab: "Safe Rider",
      labels:  ["Orders", "Safe Rider", "Chats"],
      icons:  [FontAwesomeIcons.fileLines, Icons.dashboard, FontAwesomeIcons.user,],

      // badges: [
      // Default Motion Badge Widget
      // const MotionBadgeWidget(
      // text: '99+',
      // textColor: Colors.white, // optional, default to Colors.white
      // color: Colors.red, // optional, default to Colors.red
      // size: 18, // optional, default to 18
      // ),
      tabSize: 40,
      tabBarHeight: 50,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.deepOrange,
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: Colors.grey,
      tabIconSize: 23.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor: Colors.white,
      tabIconSelectedColor: Colors.deepOrange,
      tabBarColor: Colors.white,
      onTabItemSelected: ontabSelectedItem
    );
  }
}

