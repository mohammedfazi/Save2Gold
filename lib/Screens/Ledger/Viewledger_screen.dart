import 'package:flutter/material.dart';
import 'package:save2gold/Screens/Receipt/Receipt_screen.dart';
import 'package:save2gold/widget/TopContainer.dart';
import 'package:get/get.dart';
import '../../common/Color_Constant.dart';
import '../../common/Commonsize.dart';
import '../../common/Textstyle.dart';
import '../../widget/GradientVerticalDivider.dart';
import '../../widget/spantxt.dart';

class ViewledgerScreen extends StatefulWidget {
  const ViewledgerScreen({super.key});

  @override
  State<ViewledgerScreen> createState() => _ViewledgerScreenState();
}

class _ViewledgerScreenState extends State<ViewledgerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Bodyappbar(context, "My Ledger"),
          Padding(
            padding: const EdgeInsets.only(top:150.0,left: 20.0,right: 20.0),
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.transparent,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: displayheight(context) * 0.07,
                          width: displaywidth(context) * 0.18,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFDFB761), width: 2),
                              borderRadius:
                              BorderRadius.circular(15)),
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
                                "Popular",
                                style: commonstylepoppins(
                                    size: 10,
                                    weight: FontWeight.w500,
                                    color: Color(0xFFA6A6A6)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: displayheight(context)*0.73,
                  child: ListView.builder(
                    itemCount: 12,
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Installment",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                          Text("${index+1}",style: commonstylepoppins( size: 14,weight: FontWeight.w500),)

                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text("Due date",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                          Text("11-02-2025",style: commonstylepoppins( size: 14,weight: FontWeight.w500),)

                                        ],
                                      )

                                    ],
                                  ),
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
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Due",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.currency_rupee,
                                                  size: 15,
                                                ),
                                                Text("150",style: commonstylepoppins( size: 14,weight: FontWeight.w500),),
                                              ],
                                            )

                                          ],
                                        ),
                                        GradiendVerticalDivider(context),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Status",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                            Text("Pending",style: commonstylepoppins( size: 14,weight: FontWeight.w500,color: Colors.red),)

                                          ],
                                        ),
                                        GradiendVerticalDivider(context),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text("Paid Date",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                            Text("N/A",style: commonstylepoppins( size: 14,weight: FontWeight.w500),)

                                          ],
                                        )
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
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Total",style: commonstylepoppins( color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w400),),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 15,
                                              ),
                                              Text("150",style: commonstylepoppins( size: 14,weight: FontWeight.w500),),
                                            ],
                                          )

                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){
Get.to(ReceiptScreen());
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
                                                  "Pay Now",
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
          )
        ],
      ),
    );
  }
}
