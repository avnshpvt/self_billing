import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/customeWidget/textfield.dart';

class staffhome extends StatelessWidget {
  const staffhome({super.key});

  @override
  Widget build(BuildContext context)
   {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("STAFF",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ), 
      body:  Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      h70,
                      Column(
                        children: [
                          Container(height: h!*0.3,width: w!*1.0,
                          child: Column(
                            children: [
                              Text("Customer ID",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),
                              h20,CustomeTextfield(
                                prifix: Icon(Icons.verified_user,color: Colors.blue,),
                                username: "Customer Id",),
                                h25,

                                Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.deepPurpleAccent,
                                ),
                                  child: TextButton(onPressed: (){
                                  
                                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
                                )
                                

                            ],
                          ),
                                              
                          decoration: BoxDecoration(
                                          
                                          border: Border.all(style: BorderStyle.none),
                                          borderRadius: BorderRadius.circular(19),
                                          color: Color.fromARGB(115, 204, 203, 203),
                                        ),),h70,

                        ],
                      ),
                      Column(
                        children: [
                          Container(height: h!*0.1,width: w!*1.0,
                          
                          child: Row(
                            children: [
                              Icon(Icons.qr_code_scanner_rounded),w15,
                              Text("Sacn QR",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),
                            ],
                          ),
                                            
                                            decoration: BoxDecoration(
                                      
                                      border: Border.all(style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(19),
                                      color: Color.fromARGB(115, 204, 203, 203),
                                    ),),
                        ],
                      ),
                    ],
                  ),),
      );
  }
}