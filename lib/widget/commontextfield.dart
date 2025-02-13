import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Textstyle.dart';

Widget commontextfield(String txt,controller, {TextInputType type=TextInputType.text,int lines=1}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      cursorColor: Color_Constant.primarycolor,
      keyboardType: type,
      controller: controller,
      maxLines: lines,
      style: commonstylepoppins(size: 15,weight: FontWeight.w500,color: Colors.black),
      decoration: InputDecoration(
        hintText: txt,
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        contentPadding:const EdgeInsets.all(12),
        hintStyle: commonstylepoppins(size: 14,color: Color(0xFFC4C4C4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFB2BBC6))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(color: Color_Constant.primarycolor)),
        ),
    ),
  );
}