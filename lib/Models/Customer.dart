import 'package:shared_preferences/shared_preferences.dart';

class Customer{
  int? id;
  String? sales_id;
  String? area_id;
  String? name;
  String? contact;
  String? address;
  String? gender;
  String? status;
  String? approach;
  int? created_at;

  Customer({
    this.id,
    this.sales_id,
    this.area_id,
    this.name,
    this.contact,
    this.address,
    this.gender,
    this.status,
    this.approach,
    this.created_at,
  });

  factory Customer.fromJson(Map<String, dynamic> json){
    return Customer(
      id: json['customer']['id'],
      sales_id: json['customer']['sales_id'],
      area_id: json['customer ']['area_id'],
      name: json['customer']['name'],
      contact: json['customer']['contact'],
      address: json['customer']['address'],
      gender: json['customer']['gender'],
      status: json['customer']['status'],
      approach: json['customer']['approach'],
      created_at: json['customer']['created_at'],
    );
  }

  
}