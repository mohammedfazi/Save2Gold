import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/widget/TopContainer.dart';
import '../../common/Color_Constant.dart';
import '../../common/Textstyle.dart';


class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  final searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Bodyappbar(context, "Transaction"),
          Padding(
            padding: const EdgeInsets.only(top:120.0,left: 20.0,right: 20.0),
            child: Column(
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
                Expanded(
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
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${index+1}.",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Transcation No",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                    Text("Plan No",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                    Text("Amount",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" : IJ182k4",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                    Text(" : 1",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                    Text(" : 150.00",style: commonstylepoppins(size: 14,weight: FontWeight.w400),),
                                  ],
                                ),
                                Text("Mar/16/2024",style: commonstylepoppins(size: 12,weight: FontWeight.w400, color: Color(0xFF7C7976),),),
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
