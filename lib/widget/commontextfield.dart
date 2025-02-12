import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Textstyle.dart';

Widget commontextfield(String txt,controller, {TextInputType type=TextInputType.text}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: type,
      controller: controller,
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
          borderSide: const BorderSide(color: Color(0xFF7C7976))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(color: Color_Constant.primarycolor)),
        ),
    ),
  );
}