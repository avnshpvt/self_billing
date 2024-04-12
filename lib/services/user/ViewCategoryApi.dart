import 'dart:convert';
import 'dart:ui';

import 'package:http/http.dart' as http;
import 'package:self_billing/constants/urls.dart';
import 'package:self_billing/models/categoryModel.dart';

Future<List<CategoryModel>?> getCategoryapi() async{
  var client = http.Client();
  final url = Uri.parse("$baseUrl/viewcategory");
  try {
    final apiResponse = await client.get(url);
    print(apiResponse.body);
    if(apiResponse.statusCode >=200 || apiResponse.statusCode<300){
      final body = jsonDecode(apiResponse.body);
      final res = (body as List).map((e) => CategoryModel.fromJson(e)).toList();
      return res;
    }
    else{
      return null;
    }
  } catch (e) {
    return null;
  }
}