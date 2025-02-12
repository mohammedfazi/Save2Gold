import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:save2gold/common/Commonsize.dart';
import '../common/Textstyle.dart';


PreferredSizeWidget  appbar_widget(txt,context){
  return PreferredSize(
    preferredSize: Size.fromHeight(displayheight(context)*0.10),
    child: AppBar(
      elevation: 0.5,
      shadowColor: Colors.grey,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      leading:  InkWell(
        onTap:(){
          Get.back();
        },
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Card(
            elevation: 2,
            color: Colors.white,
            surfaceTintColor: Colors.transparent,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 20,),
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      title:Text("$txt",style: commonstylepoppins(size: 20,weight: FontWeight.w600,color: Colors.black),),
    ),
  );
}