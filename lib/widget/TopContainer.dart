import 'package:flutter/material.dart';
import 'package:save2gold/common/Commonsize.dart';

import '../common/Color_Constant.dart';
import '../common/Textstyle.dart';
import 'BackButton.dart';
import 'FadeDivider.dart';

Widget TopContainer1(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset("Assets/img_5.png",height: displayheight(context)*0.10,),
      Image.asset("Assets/img_2.png",height: displayheight(context)*0.10,),
    ],
  );
}

Widget Bodyappbar(BuildContext context,txt){
  return Container(
    height: displayheight(context)*0.25,
    decoration: BoxDecoration(
        gradient: primarygradiend,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50)
        )
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackButton1(context),
                Padding(
                  padding: const EdgeInsets.only(left:80.0),
                  child: Text("$txt",style: commonstylepoppins(size: 18,weight: FontWeight.w500),),
                )
              ],
            ),
          ),
          FadeDivider()
        ],
      ),
    ),
  );
}

