import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';



 Future<void> Postcomplaint() async {
  var client = http.Client();
  final url= Uri.parse("$baseUrl/complaint");
  try {
    final response= await client.post(url,body: {
      "userid":"userid",
      "complant":"complaint",
      "rating":"rating",
      "date_str":"date",

    });
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