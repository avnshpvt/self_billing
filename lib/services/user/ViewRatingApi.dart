import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';

Postrating()  async{
  final client = http.Client();
  final Url = Uri.parse("$baseUrl/rating");
  try {
    final Response = await client.post(Url,
    body:{"rating":"rating"});
    
  } catch (e) {
    
  }

}