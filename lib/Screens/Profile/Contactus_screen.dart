import 'package:flutter/material.dart';
import 'package:save2gold/common/Color_Constant.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';
import 'package:save2gold/widget/appbar_widget.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({super.key});

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 appBar: appbar_widget(context, "Contact Us"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    offset: const Offset(0.2, 0.2),
                    spreadRadius: 5,
                    blurRadius: 10
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: displaywidth(context)*0.50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Joyalukkas Jewellery",style: commonstylepoppins(color:Colors.black,size: 15,weight: FontWeight.w600),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("911, Cross Cut Rd, Gandhipuram, Coimbatore, Tamil Nadu 641012",style: commonstylepoppins(color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w500),),
                                  Text("Phone:0422-249-4777",style: commonstylepoppins(color: Color(0xFFA6A6A6),size: 12,weight: FontWeight.w500),)
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 30,color: Colors.grey.shade500,)),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(Icons.phone,color: Colors.white,),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
