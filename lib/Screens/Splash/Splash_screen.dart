import 'dart:async';

import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Login/Loginscreen.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:save2gold/widget/appbar_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void splashfun()async{
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
    });
  }
  @override
  void initState() {
splashfun();
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopContainer1(context),
          Expanded(
            child: Center(
              child: Text(
                "Save 2 Gold",
                style: commonstylepoppins(size: 30, weight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
