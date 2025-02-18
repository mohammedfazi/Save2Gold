import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Ledger/Viewledger_screen.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:get/get.dart';
import '../../common/Color_Constant.dart';
import '../../common/Commonsize.dart';
import '../../common/Textstyle.dart';
import '../../widget/GradientVerticalDivider.dart';
import '../../widget/spantxt.dart';

class LedgerScreen extends StatefulWidget {
  const LedgerScreen({super.key});

  @override
  State<LedgerScreen> createState() => _LedgerScreenState();
}

class _LedgerScreenState extends State<LedgerScreen> {
  final searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Bodyappbar(context, "My Ledger"),
          Padding(
            padding: const EdgeInsets.only(top:130.0,left: 20.0,right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
                  child: TextFormField(
                    cursorColor: Color_Constant.primarycolor,
                    keyboardType: TextInputType.text,
                    controller: searchcontroller,
                    maxLines: 1,
                    style: commonstylepoppins(
                        size: 15, weight: FontWeight.w500, color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search,color: Color(0xFF7C7976)),
                      hintText: "search",
                      fillColor: Colors.white,
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      hintStyle:
                          commonstylepoppins(size: 14, color: Color(0xFFC4C4C4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      primaryshadow
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("ATHINA",style: commonstylepoppins(size: 14,weight: FontWeight.w600),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Account ",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Mobile no ",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Email ",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(": BCGD-218",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(": 9658965896",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(": aththina25@gmail.com",style: commonstylepoppins(color: Color(0xFFA6A6A6),weight: FontWeight.w500,size: 14),),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: double.infinity,
                        child: Card(
                          surfaceTintColor: Colors.transparent,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
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
                      );
                    },
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
