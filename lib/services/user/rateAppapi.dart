import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';


 Future<void> Postrating() async {
  var client = http.Client();
  final url= Uri.parse("$baseUrl/rating=3");
  try {
    final response= await client.get(url);
    print(response.body);
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
   
    }
    else{
      print("api call error");
      return null;
    }
    
  } catch (e) {
    print(e);
    return null;
  }
}