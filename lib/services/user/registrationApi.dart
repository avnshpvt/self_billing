
import 'package:self_billing/constants/urls.dart';
import 'package:http/http.dart' as http;

Future<String> regApi(String fname, String password, String email,String lname,String ph) async {
  try {
    final client = http.Client();
    final response = await client.post(Uri.parse("$baseUrl/userregister"),body: 
    {
      "first_name": fname,
      "last_name":lname,
      "email":email,
      "phone_no":ph,
      "password":password

    });

    print(response.body);

    if (response.statusCode == 200) {
       return "success";
      }

      else{
  
        return "failed";
      }
    }
   catch (error) {
    return "failed";

  }

}