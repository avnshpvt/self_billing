import 'dart:convert';
import 'package:self_billing/constants/urls.dart';
import 'package:self_billing/models/loginModel.dart';
import 'package:http/http.dart' as http;
import 'package:self_billing/screen/login.dart';

Future<LoginModel?> loginApi(String name, String password) async {
  try {
    print("api func");
    final client = http.Client();
    final response = await client.get(Uri.parse("$baseUrl/logincheck?username=$name&password=$password"));
    print("api func bofy");
    print(response.body);

    if (response.statusCode == 200) {
      print(response.statusCode);
      final res = jsonDecode(response.body);

      if (res['task'] == "success") {
        
        final user = LoginModel.fromJson(res);
        print("here");
        return user;
      }
      else{
        print("here 2");
        return null;
        
      }
    } else {
       print("here 3");
      // Handle other status codes
      return null;
    }
  } catch (error) {
    isClicked.value = false;
    print(error);
    // If an error occurs during the Dio call, handle it here
    return null;
  }
}
