import 'package:flutter/material.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/FadeDivider.dart';
import 'package:save2gold/widget/TopContainer.dart';

import '../../widget/BackButton.dart';
import '../../widget/GradientVerticalDivider.dart';
import '../../widget/spantxt.dart';

class JoinschemeScreen extends StatefulWidget {
  const JoinschemeScreen({super.key});

  @override
  State<JoinschemeScreen> createState() => _JoinschemeScreenState();
}

class _JoinschemeScreenState extends State<JoinschemeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Bodyappbar(context, "Join Scheme"),
            Padding(
              padding: const EdgeInsets.only(top:90.0,left: 10.0,right: 10.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 15,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Daily Gold Saving Scheme",
                                                style: commonstylepoppins(
                                                    size: 15, weight: FontWeight.w500),
                                              ),
                                              Text(
                                                "Popular",
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
                                                  Text("Total period",
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
                                                  Text("Total value",
                                                      style: commonstylepoppins(
                                                          size: 12,
                                                          weight: FontWeight.w300)),
                                                  Text(
                                                    "60,000/-",
                                                    style: commonstylepoppins(
                                                        size: 12,
                                                        weight: FontWeight.w500),
                                                  )
                                                ]),
                                            GradiendVerticalDivider(context),
                                            Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text("Net weight",
                                                      style: commonstylepoppins(
                                                          size: 12,
                                                          weight: FontWeight.w300)),
                                                  Spantxt2(
                                                      "9.56g",
                                                      " (expected)",
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
                                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                                      size: 15, weight: FontWeight.w500),
                                                  commonstylepoppins(
                                                      size: 15,
                                                      color: Color(0xFFA6A6A6),
                                                      weight: FontWeight.w500))
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                gradient: primarygradiend,
                                                borderRadius: BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 12.0, horizontal: 30.0),
                                              child: Center(
                                                  child: Text(
                                                    "Join now",
                                                    style: commonstylepoppins(
                                                        size: 10, weight: FontWeight.w600),
                                                  )),
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
            ),
          ],
        )

    );
  }
}
