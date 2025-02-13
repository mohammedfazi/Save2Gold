import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Image_Constant.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:get/get.dart';


class OnBoardingscreen extends StatefulWidget {
  const OnBoardingscreen({super.key});

  @override
  State<OnBoardingscreen> createState() => _OnBoardingscreenState();
}

class _OnBoardingscreenState extends State<OnBoardingscreen> {
  int container=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopContainer1(context),
          container==1?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                skipwidget(1,2),
                SizedBox(height: displayheight(context)*0.10,),
                Image.asset(Image_Constant.intro2),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Flexible Saving Options",style: commonstylepoppins(size: 20,weight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30.0,right: 30.0),
                  child: Text("Choose your saving schedule - daily or monthly - watch your silver and gold savings grow at your own pace.",style: commonstylepoppins(size: 14,weight: FontWeight.w400,color: Color(0xFF211603)),textAlign: TextAlign.center,),
                )
              ],
            ),
          ):
          container==2?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                skipwidget(1,3),
                SizedBox(height: displayheight(context)*0.10,),
                Image.asset(Image_Constant.intro1),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Real-Time Growth Tracking",style: commonstylepoppins(size: 20,weight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30.0,right: 30.0),
                  child: Text("Monitor the growth of your silver and gold savings portfolio with live market updates and personalized insights.",style: commonstylepoppins(size: 14,weight: FontWeight.w400,color: Color(0xFF211603)),textAlign: TextAlign.center,),
                )
              ],
            ),
          ):
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                skipwidget(2,3),
                SizedBox(height: displayheight(context)*0.10,),
                Image.asset(Image_Constant.intro3),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Secure Transactions",style: commonstylepoppins(size: 20,weight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30.0,right: 30.0),
                  child: Text("Trade with confidence using state-of-the-art encryption and safety features to protect your investments.",style: commonstylepoppins(size: 14,weight: FontWeight.w400,color: Color(0xFF211603)),textAlign: TextAlign.center,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  skipwidget(int backnumber,int nextnumber){
    return Padding(
      padding:  EdgeInsets.only(right: 10.0,top: 8.0,left: 10.0),
      child: container==1?
      InkWell(
          onTap: (){
            setState(() {
              container=nextnumber;
            });
          },
          child: Align(
              alignment: Alignment.topRight,
              child: Text("Next",style: commonstylepoppins(size: 16,weight: FontWeight.w500)))):
          container==2? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              container = backnumber;
                            });

                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.grey,
                            size: 20,
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              container = nextnumber;
                            });

                          },
                          child: Text("Next",
                              style: commonstylepoppins(
                                  size: 16, weight: FontWeight.w500)))
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                container = backnumber;
                              });

                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.grey,
                              size: 20,
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                Get.to(DashboardScreen());
                              });

                            },
                            child: Text("Get Started",
                                style: commonstylepoppins(
                                    size: 16, weight: FontWeight.w500)))
                      ]));
  }
}
