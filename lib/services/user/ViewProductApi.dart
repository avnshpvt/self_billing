import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';

Getviewproduct() async{
  var client = http.Client();
  final url = Uri.parse("$baseUrl/viewproduct");
  try {
    final apiResponse = await client.get(url);
    final body = jsonDecode(apiResponse.body);
    if(apiResponse.statusCode >=200 || apiResponse.statusCode<300){

    }
    else{

    }
  } catch (e) {
    
  }
    
  
}