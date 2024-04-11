import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';

Postcomplaint()  async{
  final client = http.Client();
  final Url = Uri.parse("$baseUrl/complaint");
  try {
    final Response = await client.post(Url,
    body:{"userid":"userid","complant":"complant","rating":"rating","date":"date"});
    
  } catch (e) {
    
  }

}