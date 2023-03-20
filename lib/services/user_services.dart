import 'dart:convert';

import 'package:Sales/Models/api_response.dart';
import 'package:http/http.dart' as http;
import 'package:Sales/Models/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bcrypt/bcrypt.dart';

import '../Models/User.dart';

Future<ApiResponse> login (String username, String password) async {
  print([username,password]);
  ApiResponse apiResponse = ApiResponse();
    final response = await http.post(
      Uri.parse('http://103.184.19.7:8080/api/login'),
      headers: {'Accept': 'application/json'},
      body: {'username': username, 'password': password},
    );
    print(response.statusCode);
    switch(response.statusCode){
      case 200:
        apiResponse.data = User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        final errors = jsonDecode(response.body)['errors'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      case 403:
        apiResponse.error = jsonDecode(response.body)['message'];
        break;
      default:
        apiResponse.error = unknown;
    }

  return apiResponse;
}

Future<ApiResponse> getUserDetails() async {
  ApiResponse apiResponse = ApiResponse();
  try {
    String token = await getToken();
    final response = await http.get(
      Uri.parse(userURL),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token
      }
    );

    switch(response.statusCode){
      case 200:
        apiResponse.data = User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        final errors = jsonDecode(response.body)['errors'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      case 403:
        apiResponse.error = jsonDecode(response.body)['message'];
        break;
      default:
        apiResponse.error = unknown;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }
  return apiResponse;
}

Future<String> getUserId() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('username') ?? "";
}

Future<String> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('token') ?? "";
}