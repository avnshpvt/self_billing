import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/screen/change_password.dart';
import 'package:self_billing/screen/personal_details.dart';


class ProfileOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile1.dart";

  const ProfileOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 242, 236, 236),
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: const [0.5, 0.9],
                    colors: [Colors.white, Color.fromARGB(255, 243, 242, 246)])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [IconButton(onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => personal_details(),));
                  }, icon: Icon(Icons.edit))],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //
                    CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Color.fromARGB(255, 165, 132, 255),
                      child: CircleAvatar(
                        //backgroundImage: NetworkImage(images[0]),
                        minRadius: 50,
                      ),
                    ),
                    //
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Varun Raj",
                  style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
                ),
                Text("varun@gmail.com | +91 678956786",style: TextStyle(color: Color.fromARGB(255, 177, 149, 254)),)
                //
              ],
            ),
          ),
    
          // const ListTile(
          //   title: Text(
          //     "Email",
          //     style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 12.0),
          //   ),
          //   subtitle: Text(
          //     "ram@kumar.com",
          //     style: TextStyle(fontSize: 18.0),
          //   ),
          //),
          //const Divider(),
          // const ListTile(
          //   title: Text(
          //     "Phone",
          //     style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 12.0),
          //   ),
          //   subtitle: Text(
          //     "+977 9818225533",
          //     style: TextStyle(fontSize: 18.0),
          //   ),
          // ),
          h10,
          InkWell(child:InkWell(
                  onTap: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => change_password()));
                  }, 
          child:  profileButtons(Icons.history,"My Orders"))),
          h3,
          profileButtons(Icons.star, "Reviews"),
          h3,
          InkWell(child:InkWell(
                  onTap: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => change_password()));
                  }, 
                  child: profileButtons(Icons.key_rounded, "Change password"))),
          h3,
          profileButtons(Icons.info, "About us"),
          h3,
          profileButtons(Icons.logout, "Logout"),


        ],
      ),
    );
  }

  Padding profileButtons(
    IconData icon, String text
  ) {
    return Padding(
          padding: const EdgeInsets.only(left: 7,right: 7,bottom: 7),
          child: Container(
            height: 50,width: w!*0.9,
          
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 245, 245),
            border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurpleAccent,
                      ),
                      child: Icon(icon,color: Colors.white,),
                    ),w10,
                    Text(text,style: TextStyle(),),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.deepPurpleAccent,))
              ],
            ),
          ),
        );
  }
}