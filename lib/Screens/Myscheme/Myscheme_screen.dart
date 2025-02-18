import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Ledger/Viewledger_screen.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Image_Constant.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:get/get.dart';
import '../../widget/GradientVerticalDivider.dart';
import '../../widget/spantxt.dart';

class MyschemeScreen extends StatefulWidget {
  const MyschemeScreen({super.key});

  @override
  State<MyschemeScreen> createState() => _MyschemeScreenState();
}

class _MyschemeScreenState extends State<MyschemeScreen> {

  int container=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
        Bodyappbar(context, "My Scheme"),
          Padding(
            padding: const EdgeInsets.only(top:120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Center(child: Text("Total Assest",style: commonstylepoppins(size: 14,weight: FontWeight.w400),)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      topcard(context, Image_Constant.goldpiece, "Gold", "9.56 grams"),
                      SizedBox(width: displaywidth(context)*0.05,),
                      topcard(context, Image_Constant.silverpiece, "Silver", "9.56 grams")
                    ],
                  ),
                ),
                SizedBox(height: displayheight(context)*0.03,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 77.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(color: Color_Constant.primarycolor,width: 1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  container=1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: container==1?primarygradiend:null,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  )

                                ),
                                width: displaywidth(context)*0.30,
                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Active",style: commonstylepoppins(size: 13,weight: FontWeight.w400),),
                                ),),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  container=2;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: container==2?primarygradiend:
                                    null,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)
                                    )

                                ),
                                width: displaywidth(context)*0.30,
                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Completed",style: commonstylepoppins(size: 13,weight: FontWeight.w400),),
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: displayheight(context) * 0.07,
                                        width: displaywidth(context) * 0.18,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFDFB761), width: 2),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Image.asset("Assets/gold.png"),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Daily Gold Saving Scheme",
                                              style: commonstylepoppins(
                                                  size: 15,
                                                  weight: FontWeight.w500),
                                            ),
                                            Text(
                                              "Total period | 12 months",
                                              style: commonstylepoppins(
                                                  size: 10,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xFFA6A6A6)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Completed",
                                                    style: commonstylepoppins(
                                                        size: 12,
                                                        weight: FontWeight.w300)),
                                                Spantxt2(
                                                    "12",
                                                    " (months)",
                                                    commonstylepoppins(
                                                        size: 14,
                                                        weight: FontWeight.w500),
                                                    commonstylepoppins(
                                                        size: 8,
                                                        color: Color(0xFF7C7976),
                                                        weight: FontWeight.w400))
                                              ]),
                                          GradiendVerticalDivider(context),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Due",
                                                    style: commonstylepoppins(
                                                        size: 12,
                                                        weight: FontWeight.w300)),
                                                Spantxt2(
                                                    "2",
                                                    " (months)",
                                                    commonstylepoppins(
                                                        size: 14,
                                                        weight: FontWeight.w500),
                                                    commonstylepoppins(
                                                        size: 8,
                                                        color: Color(0xFF7C7976),
                                                        weight: FontWeight.w400))
                                              ]),
                                          GradiendVerticalDivider(context),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Total value",
                                                    style: commonstylepoppins(
                                                        size: 12,
                                                        weight: FontWeight.w300)),
                                                Spantxt2(
                                                    "60,000/-",
                                                    "",
                                                    commonstylepoppins(
                                                        size: 14,
                                                        weight: FontWeight.w500),
                                                    commonstylepoppins(
                                                        size: 8,
                                                        color: Color(0xFF7C7976),
                                                        weight: FontWeight.w400))
                                              ])
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 15,
                                            ),
                                            Spantxt2(
                                                "150",
                                                " /day",
                                                commonstylepoppins(
                                                    size: 15,
                                                    weight: FontWeight.w500),
                                                commonstylepoppins(
                                                    size: 15,
                                                    color: Color(0xFFA6A6A6),
                                                    weight: FontWeight.w500))
                                          ],
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Get.to(ViewledgerScreen());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                gradient: primarygradiend,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 12.0, horizontal: 30.0),
                                              child: Center(
                                                  child: Text(
                                                "View Scheme",
                                                style: commonstylepoppins(
                                                    size: 10,
                                                    weight: FontWeight.w600),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget topcard(BuildContext context,image,title,weight){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(0.2, 0.2),
            spreadRadius: 1,
            blurRadius: 5
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image,height: displayheight(context)*0.04,),
            ),
            Text(title,style: commonstylepoppins(size: 12,weight: FontWeight.w600),),
            Text(weight,style: commonstylepoppins(size: 10,weight: FontWeight.w500,color: Color(0xFF7C7976)),)

          ],
        ),
      ),
    );
  }
}
