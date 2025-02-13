import 'package:flutter/material.dart';
import 'package:save2gold/common/Commonsize.dart';
import 'package:save2gold/common/Textstyle.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({super.key});

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: appbar_widget("Contact Us",context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 1,
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
                        width: displaywidth(context)*0.60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ABC GOLD PALACE",style: commonstylepoppins(color:Color(0xFF1A73E8),size: 13,weight: FontWeight.w700),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("No.14a, M ela Vedhi,Thuruthuraipoondi-6147xx",style: commonstylepoppins(color:Colors.black,size: 11,weight: FontWeight.w700),),
                                  Text("Phone:042387987879",style: commonstylepoppins(color:Colors.black,size: 11,weight: FontWeight.w700),)
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.phone,color: Colors.white,),
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
