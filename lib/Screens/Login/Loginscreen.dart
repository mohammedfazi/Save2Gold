import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Otp/Otp_screen.dart';
import 'package:save2gold/Screens/Signup/Signupscreen.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/Alerttoastdialog.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:save2gold/widget/commontextfield.dart';
import 'package:save2gold/widget/spantxt.dart';
import 'package:get/get.dart';


class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final mobilenumbercontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopContainer1(context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: displayheight(context)*0.15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Login",style: commonstylepoppins(size: 28,weight: FontWeight.w600),),
                ),
              SizedBox(height: displayheight(context)*0.03,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Spantxt("Mobile Number"),
              ),
                commontextfield("Your Phone", mobilenumbercontroller,type: TextInputType.number),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: InkWell(
                      onTap: (){
                        if(mobilenumbercontroller.text.isEmpty){
                          alerttoastred(context, "Mobile Number Required");
                        }else{
                          Get.to(OtpScreen());
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: primarygradiend,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(child: Text("LOGIN",style: commonstylepoppins(size: 14,weight: FontWeight.w700),)),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Get.to(Signupscreen());
                    },
                    child: RichText(
                        text: TextSpan(
                            text: 'Don’t have an account?',
                            style: commonstylepoppins(
                                color: Color(0xFF8D8D8D),
                                size: 14,
                                weight: FontWeight.w400),
                            children: [
                          TextSpan(
                              text: ' Sign Up',
                              style:
                                  commonstylepoppins(color: Color_Constant.primarycolor, size: 15,weight: FontWeight.w600))
                        ])),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
