import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({super.key, required this.username, this.prifix, this.suffix, this.validator, this.controller});
  final username;
  final prifix;
  final suffix;
  final validator;
  final controller;


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: username,
        prefixIcon: prifix??SizedBox(),
        suffixIcon: suffix??SizedBox(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
       ),
    );
  }
}