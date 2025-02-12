import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';

Widget FadeDivider(String?txt,BuildContext context){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap:(){
                Get.back();
              },
              child: const Card(
                elevation: 2,
                color: Colors.white,
                surfaceTintColor: Colors.transparent,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: displaywidth(context)*0.20,
            ),
            Text("$txt",style: commonstylepoppins(size: 20,weight: FontWeight.w600,color: Colors.black),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 2,
          width: double.infinity,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.transparent,
                  Colors.grey.shade300,
                  Colors.transparent
                ])
          ),
        ),
      ),
    ],
  );
}