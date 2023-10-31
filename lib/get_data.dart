import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:json_data_fetching/result_2.dart';
import 'package:json_data_fetching/welcome_generic.dart';
import 'package:json_data_fetching/welcome_model.dart';

class GetJsonObject {
  final String fileName;

  GetJsonObject({required this.fileName});

  Future<WelcomeGeneric<Result2>> fromJsonFile() async  {
    // File localJsonFile = File('assets/mockResponse2.json');
    String jsonString = await rootBundle.loadString(fileName);
    var data = await jsonDecode(jsonString);
    WelcomeGeneric<Result2> welcomeGeneric =  await WelcomeGeneric.fromJson(data, (json) => Result2.fromJson(data["result"]));
    return welcomeGeneric;
    // Welcome welcome = Welcome.fromJson(data);
    // return welcome;
  }
}
