import 'package:flutter/material.dart';

import '../../common/Color_Constant.dart';
import '../../common/Textstyle.dart';
import '../../widget/appbar_widget.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar_widget(context,"Terms & Conditions"),
      body: Padding(
        padding: const EdgeInsets.only(top:12.0,left: 12.0,right: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: secondarygradiend,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("By accessing or using the Gold Loan mobile application, you agree to comply with all applicable terms and conditions set forth by the app provider. The app is intended to allow users to apply for and manage gold-backed loans digitally, subject to eligibility criteria such as age, income, and legal ownership of the pledged gold. The app may require personal information, including identity proof, address proof, and details regarding the gold being pledged, such as weight and purity, which will be used for loan assessment. By submitting this information, you consent to its use for processing your loan application and for any related verification processes.The loan amount sanctioned through the app will typically be based on a percentage of the market value of the gold pledged, adhering to the Loan-to-Value (LTV) ratio defined by the lending institution. The app may display current interest rates, processing fees, and repayment options, which could include monthly EMIs, lump-sum payments, or part-payment options. Interest will be calculated either on a fixed or floating rate, and late payments may result in penalties or additional fees. Users are also responsible for repaying the loan according to the terms outlined, and failure to do so may result in the forfeiture of the pledged gold.By using the mobile app, you agree that the lender reserves the right to reassess the value of the pledged gold periodically and to adjust the loan terms as necessary. The app will notify users of any changes to loan terms or additional fees. Furthermore, the app may offer features like gold valuation, loan status tracking, and the ability to request a loan top-up or repayment extension. You are also responsible for ensuring the security of your account and the confidentiality of your login details.",style: commonstylepoppins(color: Colors.black,size: 12),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
