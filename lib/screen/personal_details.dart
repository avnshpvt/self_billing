import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/customeWidget/textfield.dart';

class personal_details extends StatelessWidget {
  personal_details({super.key});

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
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
            CustomeTextfield(username: 'Address',prifix: Icon(Icons.location_city_sharp,color: Colors.deepPurple), controller: locationController,),
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

        