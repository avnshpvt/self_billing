import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';

Posteditprofile()  async{
  final client = http.Client();
  final Url = Uri.parse("$baseUrl/editprofile");
  try {
    final Response = await client.post(Url,
    body:{"logid":"logid","first_name":"first_name","last_name":"last_name","Email":"Email","phone_no":"phone_no","password":"password"});
    
  } catch (e) {
    
  }

}