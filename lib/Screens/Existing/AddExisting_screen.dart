import 'package:flutter/material.dart';
import 'package:save2gold/widget/appbar_widget.dart';
import 'package:save2gold/widget/commontextfield.dart';
import 'package:get/get.dart';
import '../../common/Color_Constant.dart';
import '../../common/Textstyle.dart';
import '../../widget/Alerttoastdialog.dart';

class AddExistingScreen extends StatefulWidget {
  const AddExistingScreen({super.key});

  @override
  State<AddExistingScreen> createState() => _AddExistingScreenState();
}

class _AddExistingScreenState extends State<AddExistingScreen> {

  final groupcodecontroller=TextEditingController();
  final registernumbercontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar_widget(context, "Add Existing"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Group Code",style: commonstylepoppins(size: 16,color: Color(0xFFA6A6A6),weight: FontWeight.w400),),
                ),
                commontextfield("", groupcodecontroller),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Register No",style: commonstylepoppins(size: 16,color: Color(0xFFA6A6A6),weight: FontWeight.w400),),
                ),
                commontextfield("", registernumbercontroller)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: InkWell(
                  onTap: (){
                    if(groupcodecontroller.text.isEmpty){
                      alerttoastred(context, "Enter your Group Code");
                    } else if(registernumbercontroller.text.isEmpty){
                      alerttoastred(context, "Enter your Register Number");
                    }
                    else{
                      // Get.to(OtpScreen());
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
                      child: Center(child: Text("SUBMIT",style: commonstylepoppins(size: 14,weight: FontWeight.w700),)),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
