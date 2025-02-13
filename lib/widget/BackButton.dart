import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:save2gold/common/Commonsize.dart';

Widget BackButton1(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){
        Get.back();
      },
      child: Container(
        height: displayheight(context)*0.05,
        width: displaywidth(context)*0.10,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(0.2, 0.2),
              spreadRadius: 1,
              blurRadius: 2
            )
          ],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
      ),
    ),
  );
}