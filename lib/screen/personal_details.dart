import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/customeWidget/textfield.dart';

class personal_details extends StatelessWidget {
  final String fname;
  final String lname;
  final String email;
  final String phoneno;

  personal_details({super.key, required this.fname, required this.lname, required this.email, required this.phoneno});

  @override
  Widget build(BuildContext context) {

  final TextEditingController firstnameController = TextEditingController(text: fname);
  final TextEditingController lastnameController = TextEditingController(text: lname);
  final TextEditingController emailController = TextEditingController(text: email);
  final TextEditingController phoneController = TextEditingController(text: phoneno);
  //final TextEditingController locationController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Details',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomeTextfield(
              username: 'First name',prifix: Icon(Icons.person,color: Colors.deepPurple), controller: firstnameController,
              
              ),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Last name',prifix: Icon(Icons.person,color: Colors.deepPurple), controller: lastnameController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Email',prifix: Icon(Icons.email,color: Colors.deepPurple), controller: emailController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Phone no.',prifix: Icon(Icons.phone_android_outlined,color: Colors.deepPurple), controller: phoneController,),
            SizedBox(height: 10,),
            //CustomeTextfield(username: 'Address',prifix: Icon(Icons.location_city_sharp,color: Colors.deepPurple), controller: locationController,),
            //SizedBox(height: 10,),
            
            SizedBox(height: 110),

            Container(
              height: 50,width: 400,  child: Center(child: Text("Update",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),color: Colors.deepPurpleAccent,
            )
        ])
        ),
      );
  }
}

        