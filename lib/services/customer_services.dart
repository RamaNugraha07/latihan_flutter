import 'dart:convert';

import 'package:Sales/Models/api_response.dart';
import 'package:Sales/services/user_services.dart';
import 'package:http/http.dart' as http;
import 'package:Sales/Models/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bcrypt/bcrypt.dart';

import '../Models/User.dart';
import '../Models/Customer.dart';

Future<ApiResponse> created_user(
  String sales_id, 
  String area_id, 
  String name, 
  String contact, 
  String address, 
  String gender, 
  String status, 
  String approacg, 
  String created_at) async {
  print([name, contact, address, gender, status, approacg]);
  ApiResponse apiResponse = ApiResponse();
  try {
    String token = await getToken();
    final response = await http.post(
      // Uri.parse('http://103.184.19.7:8080/api/login'),
      Uri.parse(
        'http://127.0.0.1:8000/api/customer/add'
        ),
      headers: {
        'Accept': 'application/json'},
      body: {
      'name': name, 
      'contact': contact, 
      'address': address, 
      'gender': gender, 
      'status' :status, 
      'approved' :approacg,
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