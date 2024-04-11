import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/services/user/ComplaintApi.dart';
import 'package:self_billing/services/user/EditProfileApi.dart';
import 'package:self_billing/services/user/ViewCategoryApi.dart';
import 'package:self_billing/services/user/ViewOfferApi.dart';
import 'package:self_billing/services/user/ViewRatingApi.dart';
import 'package:self_billing/services/user/ViewReply.dart';
import 'package:self_billing/services/user/changepasswordapi.dart';
import 'package:self_billing/services/user/viewProfileapi.dart';

class ApiCheckScreen extends StatelessWidget {
  const ApiCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          h30,
          ElevatedButton(onPressed: (){
            print("here");
            getviewoffer();
          }, child: Text("offer")),
          h10,
          ElevatedButton(onPressed: (){
            GetCategory();

          }, child: Text("category")),
          h10,
          ElevatedButton(onPressed: (){
            Getchangepassword();

          }, child: Text("changepassword")),
          h10,
          ElevatedButton(onPressed: (){
            Getviewprofile();
          }, child: Text("profile")),
          h10,
          ElevatedButton(onPressed: (){
            Posteditprofile();
          }, child: Text("editprofile")),
          h10,
          ElevatedButton(onPressed: (){
            Postcomplaint();
          }, child: Text("complaint")),
          h10,
          ElevatedButton(onPressed: (){
            Postrating();
          }, child: Text("rating")),
          h10,
          ElevatedButton(onPressed: (){
            Getviewreply();
          }, child: Text("reply")),

        ],
      ),
    );
  }
}