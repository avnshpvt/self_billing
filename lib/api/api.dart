import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:self_billing/models/numModel.dart';



Future<NumberModel?> apiCall(int num) async{

  final responce = await http.get(Uri.parse("http://numbersapi.com/$num?json"));
  final res = jsonDecode(responce.body);
  NumberModel model = NumberModel.fromJson(res);
  return model;

}