import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {


  signup(String id, String password){
    Uri url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[AIzaSyCJK2w9Q9HFBwGNsVYfAeAwi8vnvLOcAyg]");

    http.post(url, body: json.encode({
      "id" : id,
      "passowrd": password,
      "returnSecureToken": true,
    }));
  }
}