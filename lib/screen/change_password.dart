import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/customeWidget/textfield.dart';

class change_password extends StatelessWidget {
  change_password({super.key});

  final TextEditingController currentpasswordController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();
  final TextEditingController confirmnewpasswordController = TextEditingController();

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomeTextfield(
              username: 'Current password',prifix: Icon(Icons.lock_open,color: Colors.deepPurple), controller: currentpasswordController,
              
              ),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'New Password',prifix: Icon(Icons.lock_open,color: Colors.deepPurple), controller: newpasswordController,),
            SizedBox(height: 10,),
            CustomeTextfield(username: 'Confirm New Password',prifix: Icon(Icons.lock_open,color: Colors.deepPurple), controller: confirmnewpasswordController,),
            
            SizedBox(height: 110),

            Container(
              height: 50,width: 400,  child: Center(child: Text("SAVE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),color: Colors.deepPurpleAccent,
            )
        ])
        ),
      );
  }
}