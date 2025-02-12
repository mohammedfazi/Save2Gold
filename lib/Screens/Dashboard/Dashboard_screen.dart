import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(displayheight(context)*0.10),
          child: Container(
            decoration: BoxDecoration(
              gradient: primarygradiend,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:8.0,left: 8.0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 19,
                      backgroundColor: Color_Constant.primarycolor,
                      child: Center(child: Icon(Icons.more_horiz_outlined),),
                    ),
                  ),
                ),
                title: Text("Home",style: commonstylepoppins(size: 18,weight: FontWeight.w500),),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 19,
                        backgroundColor: Color_Constant.primarycolor,
                        child: Center(child: Icon(Icons.notifications),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0),
            child: CarouselSlider(
                items: [
                  Stack(
                    clipBehavior: Clip.none,
                    children:[
                      Image.asset("Assets/img.png",fit: BoxFit.fill,),
                      Positioned(
                        top: 130,
                        left: 40,
                        right: 40,
                        child: Container(
                          height: displayheight(context)*0.08,
                          decoration: BoxDecoration(
                            gradient: primarygradiend,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("TODAY",style: commonstylepoppins(size: 8,weight: FontWeight.w600),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("GOLD",style: commonstylepoppins(size: 8,weight: FontWeight.w600)),
                                          Row(
                                            children: [
                                              Icon(Icons.currency_rupee,color: Colors.black,size: 15,),
                                              Text("7184.00",style: commonstylepoppins(size: 15,weight: FontWeight.w700)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Text("|"),
                                    Padding(
                                      padding: const EdgeInsets.only(right:8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("SILVER",style: commonstylepoppins(size: 8,weight: FontWeight.w600)),
                                          Row(
                                            children: [
                                              Icon(Icons.currency_rupee,color: Colors.black,size: 15,),
                                              Text("124.00",style: commonstylepoppins(size: 15,weight: FontWeight.w700)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                            ],),
                          ),
                        ),
                      )

            ]
                       ),
                ],
                options: CarouselOptions(
                  // height: displayheight(context)*0.23,
                  aspectRatio: 16/8,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval:const Duration(seconds: 3),
                  autoPlayAnimationDuration:const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Invest & Grow wealth",style: commonstylepoppins(size: 15,weight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Popular schemes",style: commonstylepoppins(size: 15,weight: FontWeight.w500),),
                InkWell(
                    onTap: (){},
                    child: Text("View all",style: commonstylepoppins(size: 13,weight: FontWeight.w500,color: Color(0xFFA6A6A6),),)),
              ],
            ),
          ),
          ListView.builder(
            itemCount: 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context,int index){
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
                              height:displayheight(context)*0.07,
                              width: displaywidth(context)*0.18,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFDFB761),width: 2),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Image.asset("Assets/gold.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Daily Gold Saving Scheme",style: commonstylepoppins(size: 15,weight: FontWeight.w500),),
                                  Text("Popular",style: commonstylepoppins(size: 10,weight: FontWeight.w500,color: Color(0xFFA6A6A6)),)

                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
            );
          })

        ],
      ),
    );
  }
}



// 1b431113-e492-48c6-94d3-e935db35face