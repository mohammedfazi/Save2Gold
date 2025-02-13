import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';

Widget FadeDivider(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 0.5,
      width: double.infinity,
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.transparent,
                Colors.grey.shade200,
                Colors.transparent
              ])
      ),
    ),
  );
}