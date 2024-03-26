// To parse this JSON data, do
//
//     final NumberModel = NumberModelFromJson(jsonString);

import 'dart:convert';

NumberModel NumberModelFromJson(String str) => NumberModel.fromJson(json.decode(str));

String NumberModelToJson(NumberModel data) => json.encode(data.toJson());

class NumberModel {
    String text;
    int number;
    bool found;
    String type;

    NumberModel({
        required this.text,
        required this.number,
        required this.found,
        required this.type,
    });

    factory NumberModel.fromJson(Map<String, dynamic> json) => NumberModel(
        text: json["text"],
        number: json["number"],
        found: json["found"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "number": number,
        "found": found,
        "type": type,
    };
}
