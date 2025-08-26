import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_batch_3/Day_23/Model/cat_model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://api.thecatapi.com/v1/images/search?limit=10"),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
