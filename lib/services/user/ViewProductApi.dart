import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';
import 'package:self_billing/models/productModel.dart';



 Future<List<ProductsModel>?> getviewproduct() async {
  var client = http.Client();
  final url= Uri.parse("$baseUrl/viewproduct");
  try {
    final response= await client.get(url);
    print(response.body);
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
      final res = (body as List).map((e) => ProductsModel.fromJson(e)).toList();
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