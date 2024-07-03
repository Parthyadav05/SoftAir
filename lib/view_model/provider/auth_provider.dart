import 'package:air_soft/view_model/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../model/user_model.dart';
class AuthProvider extends ChangeNotifier{
  bool _loading = false;
  bool _isBack = false;
  bool  get loading => _loading;
  bool get isBack => _isBack;
  Future<void> postData(User body) async {
  _loading = true;
  notifyListeners();
  http.Response response = (await SignUp(body))!;
  if (response.statusCode == 200) {
  _isBack = true;

  }
  _loading = false;
  notifyListeners();
  }
}