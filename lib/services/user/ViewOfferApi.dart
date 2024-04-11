import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';

getviewoffer() async{print("here2");
  var client = http.Client();
  final url = Uri.parse("$baseUrl/viewoffer");
  try {
    final apiResponse = await client.get(url);
    final body = jsonDecode(apiResponse.body);
    print(apiResponse.body);
    print(apiResponse.statusCode);
    if(apiResponse.statusCode >=200 || apiResponse.statusCode<300){
      print(apiResponse.body);
    }
    else{

    }
  } catch (e) {
    print(e);
  }
    
  
}