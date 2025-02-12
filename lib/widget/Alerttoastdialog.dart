import 'package:flutter/material.dart';
import 'package:save2gold/common/Textstyle.dart';


  void alerttoastgreen(BuildContext context,String txt){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration:const Duration(seconds: 1),
          backgroundColor: Colors.green,
            margin:const EdgeInsets.all(8.0),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            content: Row(
              children: [
                Icon(Icons.verified,color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(txt,style: commonstylepoppins(weight: FontWeight.w500,color: Colors.white),),
                ),
              ],
            )));}


  void alerttoastred(BuildContext context,String txt){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration:const Duration(seconds: 1),
            backgroundColor: Colors.red,
            margin:const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            behavior: SnackBarBehavior.floating,
            content: Row(
              children: [
                Icon(Icons.info,color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(txt,style: commonstylepoppins(weight: FontWeight.w500,color: Colors.white),),
                ),
              ],
            )));}

