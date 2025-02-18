import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/widget/TopContainer.dart';
import '../../common/Color_Constant.dart';
import '../../common/Textstyle.dart';
import '../../widget/appbar_widget.dart';
import 'package:get/get.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key});

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Bodyappbar(context, "Receipt"),
          Padding(
            padding: const EdgeInsets.only(top:150.0,left: 30.0,right: 30.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:const Color(0xFFFFF8F0),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color_Constant.primarycolor,
                          child: const CircleAvatar(
                            radius: 28,
                            backgroundColor:Color(0xFFF5FAFF) ,
                            child: CircleAvatar(
                              backgroundColor: Color_Constant.primarycolor,
                              child: Center(
                                child: Icon(Icons.check,color: Color(0xFFF5FAFF),),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text("Transaction Has\nBeen Completed",style: commonstylepoppins(color: Colors.black,weight: FontWeight.w500,size: 14),),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Status",style: commonstylepoppins(color: const Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("PENDING",style: commonstylepoppins(color: const Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Date",style: commonstylepoppins(color: const Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("March 30, 2023",style: commonstylepoppins(color: const Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Transaction No",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("123X57SWD990",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Ref No",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("-",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Receipt No",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("-",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Account",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("-",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mobile No",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("908947589",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Advance(s)",style: commonstylepoppins(color: Color(0xFF9B9B9B),size: 12,weight: FontWeight.w400),),
                                    Text("6",style: commonstylepoppins(color: Color(0xFF1E1E1E),size: 12,weight: FontWeight.w500),)
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                                  child: Center(child: Text("Please Note The Transaction No And For \nYour Future Communications *",style: commonstylepoppins(color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w500),textAlign: TextAlign.center,)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: InkWell(
                    onTap: (){
                      Get.to(DashboardScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: primarygradiend,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("Download",style: commonstylepoppins(size: 14,weight: FontWeight.w700),)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
