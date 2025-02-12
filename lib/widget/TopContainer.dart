import 'package:flutter/material.dart';
import 'package:save2gold/common/Commonsize.dart';

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