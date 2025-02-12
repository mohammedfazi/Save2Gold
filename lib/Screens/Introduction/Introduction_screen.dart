import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Textstyle.dart';
class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  IntroductionScreen(
        onDone: () => DashboardScreen(),
        onSkip: () => DashboardScreen(),
        showSkipButton: true,
        dotsDecorator: DotsDecorator(activeColor: Color_Constant.primarycolor),
        skip:  Text("Skip",style: commonstylepoppins(weight: FontWeight.w800)),
        next: const Icon(Icons.arrow_forward),
        done:  Text("Get Started", style: commonstylepoppins(weight: FontWeight.w800)),
      pages:[
        PageViewModel(
          title: "Flexible Saving Options",
          body: "Choose your saving schedule - daily or monthly - watch your silver and gold savings grow at your own pace.",
          image: _buildImage("Assets/intro1.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Real-Time Growth Tracking",
          body: "Monitor the growth of your silver and gold savings portfolio with live market updates and personalized insights.",
          image: _buildImage("Assets/intro2.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Secure Transactions",
          body: "Trade with confidence using state-of-the-art encryption and safety features to protect your investments.",
          image: _buildImage("Assets/intro3.png"),
          decoration: _pageDecoration(),
        ),

      ]
    );
  }


  Widget _buildImage(String path) {
    return Image.asset(path, width: 300);
  }

  PageDecoration _pageDecoration() {
    return PageDecoration(
      titleTextStyle: commonstylepoppins(size: 24, weight: FontWeight.w800),
      bodyTextStyle: commonstylepoppins(size: 16),
      imagePadding: EdgeInsets.all(20),
      pageColor: Color_Constant.backgroundcolor,
    );
  }
}

