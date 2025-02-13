import 'package:flutter/material.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/widget/appbar_widget.dart';

import '../../common/Color_Constant.dart';
import '../../common/Textstyle.dart';
import '../../widget/Alerttoastdialog.dart';
import '../../widget/commontextfield.dart';
import '../../widget/spantxt.dart';

class JoinformScreen extends StatefulWidget {
  const JoinformScreen({super.key});

  @override
  State<JoinformScreen> createState() => _JoinformScreenState();
}

class _JoinformScreenState extends State<JoinformScreen> {
  final namecontroller=TextEditingController();
  final emailidcontroller=TextEditingController();
  final mobilenumbercontroller=TextEditingController();
  final addresscontroller=TextEditingController();

  String ?Selectedidproof;
  
  List<dynamic> idproofdata=['Aadhaar Card','Pan Card','Driving License','Passport'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar_widget(context, "Gold Saving Scheme"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    child: Spantxt("Address"),
                  ),
                  commontextfield("Your Address", mobilenumbercontroller,type: TextInputType.text,lines: 3),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Spantxt("ID Proof"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: displayheight(context)*0.15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color(0xFFB2BBC6))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.cloud_upload_outlined,size: 30,color: Color_Constant.primarycolor,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Click here to upload",style: commonstylepoppins( color: Color(0xFF7C7976), size: 12,),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: InkWell(
                        onTap: (){
                          // if(namecontroller.text.isEmpty||namecontroller.text.isEmpty||mobilenumbercontroller.text.isEmpty||addresscontroller.text.isEmpty){
                          //   alerttoastred(context, "Required Field is Empty");
                          // }else{
                          //
                          // }
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
            )
          ],
        ),
      ),
    );
  }
}
