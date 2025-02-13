import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save2gold/widget/appbar_widget.dart';
import '../../common/Color_Constant.dart';
import '../../common/Commonsize.dart';
import '../../common/Textstyle.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  List <dynamic> colors=[
    {
      'color':Color_Constant.primarycolor,
      'color1':Color_Constant.primarycolor.withOpacity(0.3)
    },
    {
      'color':Colors.red,
      'color1':Colors.red.shade100
    },
    {
      'color':Colors.green,
      'color1':Colors.green.shade100
    },
    {
      'color':Colors.orange,
      'color1':Colors.orange.shade100
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar_widget(context, "Notification"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  ListView.builder(
          shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: colors[index % colors.length]['color1'],
                      child: Center(
                        child: Icon(CupertinoIcons.bell,color:colors[index % colors.length]['color'],size: 15,),
                      ),
                    ),
                    SizedBox(
                      width: displaywidth(context)*0.80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Reminder for your meetings",style: commonstylepoppins(size: 14,color: Colors.black,weight: FontWeight.w500),),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Text("10 min ago",style: commonstylepoppins(size: 10,color: Color_Constant.secondarycolor,weight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Learn more about managing account info and activity",style: commonstylepoppins(color: Color(0xFFA6A6A6),size: 12),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
