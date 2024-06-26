import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/constantVariables.dart';
import 'package:self_billing/constants/urls.dart';
import 'package:self_billing/models/profileModel.dart';



 Future<List<ProfileModel>?> profileApi() async {
  print("lid : jjjj $lid");
  var client = http.Client();
  final url= Uri.parse("$baseUrl/viewprofile?loginid=$lid");
  try {
    final response= await client.get(url);
    print("bod : ${response.body}");
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
      final res = (body as List).map((e) => ProfileModel.fromJson(e)).toList();
      return res;
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