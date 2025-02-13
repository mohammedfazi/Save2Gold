import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/common/Color_Constant.dart';

import '../../common/Commonsize.dart';
import '../../common/Textstyle.dart';
import '../../widget/BackButton.dart';
import '../Signup/Signupscreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color_Constant.backgroundcolor,
        leading: BackButton1(context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: displayheight(context)*0.12,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Verification Code",style: commonstylepoppins(size: 28,weight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Please type the verification code sent to +9176876XXXXX",style: commonstylepoppins(size: 14,weight: FontWeight.w400,color: Color(0xFF7C7976)),),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Pinput(
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 60,
                      textStyle: commonstylepoppins(size: 25,weight: FontWeight.w400,color: Color(0xFF7C7976)),
                      decoration: BoxDecoration(
                        border: Border.all(color:  Color_Constant.primarycolor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    length: 6,
                    onCompleted: (pin)=>Get.to(DashboardScreen()),
                    controller: pinController,
                  ),
                )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Center(
                child: InkWell(
                  onTap: (){
                    Get.to(Signupscreen());
                  },
                  child: RichText(
                      text: TextSpan(
                          text: 'I don’t receive a code!',
                          style: commonstylepoppins(
                              color: Color(0xFF8D8D8D),
                              size: 14,
                              weight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: ' Please resend',
                                style:
                                commonstylepoppins(color: Color_Constant.primarycolor, size: 15,weight: FontWeight.w600))
                          ])),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
