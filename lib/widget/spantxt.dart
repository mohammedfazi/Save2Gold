import 'package:flutter/material.dart';
import 'package:save2gold/common/Textstyle.dart';

RichText Spantxt(txt){
  return RichText(
      text: TextSpan(
        text: '$txt',
        style: commonstylepoppins(color: Color(0xFF7C7976), size: 16, weight: FontWeight.w400),
        children: [
          TextSpan(
            text: ' *',
            style: commonstylepoppins(color: Colors.red,size: 15)
          )
        ]
      ));
}

RichText Spantxt2(txt1,txt2,style1,style2){
  return RichText(
      text: TextSpan(
          text: '$txt1',
          style: style1,
          children: [
            TextSpan(
                text: '$txt2',
                style: style2
            )
          ]
      ));
}