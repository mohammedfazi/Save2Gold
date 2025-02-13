import 'package:flutter/material.dart';

import '../Screens/Profile/Profile_screen.dart';
import '../common/Color_Constant.dart';
import '../common/Commonsize.dart';
import '../common/Textstyle.dart';
import 'BackButton.dart';

PreferredSize appbar_widget(BuildContext context,txt) {
  return PreferredSize(
      preferredSize: Size.fromHeight(displayheight(context) * 0.10),
      child: Container(
        decoration: BoxDecoration(
            gradient: primarygradiend,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: BackButton1(context),
            title: Text(
              "$txt",
              style: commonstylepoppins(size: 18, weight: FontWeight.w500),
            ),
            centerTitle: true,

          ),
        ),
      ));
}
