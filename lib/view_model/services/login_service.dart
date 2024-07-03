import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:air_soft/model/user_model.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> SignUp(User data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("URL + API KEY"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}