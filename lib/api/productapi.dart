import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:self_billing/models/productmodels.dart';



Future<List<Welcome>> getproducts() async{

Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
final cart = jsonDecode(response.body);

List<Welcome> data= (cart as List).map((e) { return Welcome.fromJson(e);}).toList();
return data;
}