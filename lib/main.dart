import 'package:flutter/material.dart';
import 'package:self_billing/screen/bar.dart';
import 'package:self_billing/screen/change_password.dart';
import 'package:self_billing/screen/creditcard.dart';
import 'package:self_billing/screen/login.dart';
import 'package:self_billing/screen/orderhistory.dart';
import 'package:self_billing/screen/personal_details.dart';
import 'package:self_billing/screen/profile.dart';
import 'package:self_billing/screen/review.dart';
import 'package:self_billing/screen/sample.dart';
import 'package:self_billing/screen/staff_home.dart';
import 'package:self_billing/screen/staff_userhome.dart';
import 'package:self_billing/screen/trolly.dart';
import 'package:self_billing/screen/upi.dart';
import 'package:self_billing/screen/user_home.dart';
import 'package:self_billing/screen/user_viewproductpage.dart';
import 'package:self_billing/services/apicheckScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      HomeScreen()
      //UpiPaymentScreen()
      //ApiCheckScreen(),
       //staff_userScreen(),
       //ProductDetailsPage(),
      //MyApp8()
    );
  }
}
