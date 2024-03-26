import 'package:flutter/material.dart';
import 'package:self_billing/customeWidget/textfield.dart';

class Reg extends StatelessWidget {
  Reg({super.key});

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password1Controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration form'),
        backgroundColor: Color.fromARGB(255, 117, 7, 226),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomeTextfield(
              username: 'First name',prifix: Icon(Icons.person), controller: firstnameController,
              
              ),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Last name',prifix: Icon(Icons.person), controller: lastnameController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Email',prifix: Icon(Icons.email), controller: emailController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Phone no.',prifix: Icon(Icons.phone_android_outlined), controller: phoneController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Address',prifix: Icon(Icons.location_city_sharp), controller: locationController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Password',prifix: Icon(Icons.password), controller: passwordController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Confirm Password',prifix: Icon(Icons.password), controller: password1Controller,),
            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){
                  print(firstnameController.text);
                  print(lastnameController.text);
                  print(emailController.text);
                  print(phoneController.text);
                  print(locationController.text);
                  print(passwordController.text);
                  print(password1Controller.text);


            }, child: Text('Register')

        )],
        ),
      ),
    );
  }
}