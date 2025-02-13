import 'package:flutter/material.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';

Widget GradiendVerticalDivider(BuildContext context){
  return Container(
    height: displayheight(context)*0.05,
    width: displaywidth(context)*0.003,
    decoration: BoxDecoration(
      gradient: primarygradiend,
      borderRadius: BorderRadius.circular(10)
    ),
  );
}

