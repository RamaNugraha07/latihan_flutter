import 'package:shared_preferences/shared_preferences.dart';

class User {
  String? username;
  String? token;
  String? name;
  int? level;
  String? address;
  String? contact;

  User({
    this.username,
    this.token,
    this.name,
    this.level,
    this.address,
    this.contact
  });

  factory User.fromJson(Map<String, dynamic> json){
    print(json);
    return User(
      username: json['user']['username'],
      token: json['user']['token'],
      name: json['user']['name'],
      level: json['user']['level'],
      address: json['user']['address'],
      contact: json['user']['contact'],
    );
  }

  Future<String> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('token') ?? '';
  } 

  
  
}