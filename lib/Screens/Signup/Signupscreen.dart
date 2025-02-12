import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save2gold/Screens/Login/Loginscreen.dart';

import '../../common/Color_Constant.dart';
import '../../common/Commonsize.dart';
import '../../common/Textstyle.dart';
import '../../widget/Alerttoastdialog.dart';
import '../../widget/TopContainer.dart';
import '../../widget/commontextfield.dart';
import '../../widget/spantxt.dart';
class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final namecontroller=TextEditingController();
  final emailidcontroller=TextEditingController();
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
                  child: Text("Sign Up",style: commonstylepoppins(size: 28,weight: FontWeight.w600),),
                ),
                SizedBox(height: displayheight(context)*0.03,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Spantxt("Full name"),
                ),
                commontextfield("Your Name", namecontroller,type: TextInputType.text),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Spantxt("E-mail"),
                ),
                commontextfield("Your E-mail", emailidcontroller,type: TextInputType.emailAddress),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Spantxt("Mobile Number"),
                ),
                commontextfield("Your Number", mobilenumbercontroller,type: TextInputType.number),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: InkWell(
                      onTap: (){
                        if(namecontroller.text.isEmpty||namecontroller.text.isEmpty||mobilenumbercontroller.text.isEmpty){
                          alerttoastred(context, "Required Field is Empty");
                        }else{

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
                          child: Center(child: Text("SIGN UP",style: commonstylepoppins(size: 14,weight: FontWeight.w700),)),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Get.to(Loginscreen());
                    },
                    child: RichText(
                        text: TextSpan(
                            text: 'Already have an account?',
                            style: commonstylepoppins(
                                color: Color(0xFF8D8D8D),
                                size: 14,
                                weight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: ' Login',
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
