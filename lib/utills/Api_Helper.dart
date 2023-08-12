import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../screens/Home_modal.dart';

class ApiHelper {

  Future<List> apicall() async {
    String jsonstring = await rootBundle.loadString("assets/country/country.json");
    List json = jsonDecode(jsonstring);
    print("-----------------------------------");

    List<dynamic> bigjson = json.map((e) => CountryModel().nameFromJson(e)).toList();
    print(bigjson.length);
    print("-----------------------------------");
    return bigjson;
  }
}
