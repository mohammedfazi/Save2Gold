import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/Screens/Login/Loginscreen.dart';
import 'package:save2gold/Screens/Profile/Aboutus_screen.dart';
import 'package:save2gold/Screens/Profile/Contactus_screen.dart';
import 'package:save2gold/Screens/Profile/Privacypolicy_screen.dart';
import 'package:save2gold/Screens/Profile/Terms_screen.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/FadeDivider.dart';
import 'package:get/get.dart';
import 'package:save2gold/widget/appbar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar_widget(context, "Update Profile"),
      body: Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  listtile("About Us", Icons.info_outline,1),
                  listtile("Privacy Policy", Icons.info,2),
                  listtile("Terms & Conditions", Icons.style_outlined,3),
                  listtile("Contact Us", Icons.phone,4),
                  listtile("Notification", CupertinoIcons.bell_fill,5),
                  listtile("Location", Icons.location_on,6),
                  listtile("Wallet", Icons.wallet_rounded,6),
                  listtile("Transactions", Icons.receipt,6),
                  listtile("Logout", Icons.logout,7),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
  Widget listtile(String?txt,IconData?icon,int?count){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              count==1?
                  Get.to(const AboutusScreen()):
                  count==2?
                      Get.to(const PrivacypolicyScreen()):
                      count==3?
                      Get.to(const TermsScreen()):
                      count==4?
                      Get.to(const ContactusScreen()):
                      count==5?
                      Get.to(const ContactusScreen()):
                      // Get.to(const NotificationScreen()):
                      count==6?
                      Get.to(const ContactusScreen()):
                       // deleteaccount():
                          count==7?
                              logout():
                              Get.back();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon,color: Color(0xFF3D4C5E),),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("$txt",style: commonstylepoppins(color: Color(0xFF3D4C5E),size: 15,weight: FontWeight.w400),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: Colors.grey.shade100,endIndent: 100,),
          )
        ],
      ),
    );
  }
  
  Future <void> logout(){
    return showDialog(
        context: context, builder: (BuildContext context){
      return  AlertDialog(
        backgroundColor: Color_Constant.primarycolor,
        surfaceTintColor: Colors.transparent,
        title: const Icon(Icons.logout,color: Color_Constant.primarycolor,),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text("Are you sure you want to logout the App.",style: commonstylepoppins(color: Colors.black,weight: FontWeight.w400,size: 15,),textAlign: TextAlign.center,),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: displaywidth(context)*0.30,
                child: TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child: Center(child: Text("No",style: commonstylepoppins(color: Color_Constant.primarycolor),))),
              ),

              SizedBox(
                width: displaywidth(context)*0.30,
                child: TextButton(
                    onPressed: (){
                      Get.to(const Loginscreen());
                    },
                    child: Center(child: Text("Yes",style: commonstylepoppins(color: Colors.black),))),
              )
            ],
          )
        ],
      );
    });
  }


}
