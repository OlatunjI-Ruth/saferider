import 'package:flutter/material.dart';

class User {
  String? id;
  String? fullname;
  String? email;
  String? gender;
  String? password;
  String? phonenumber;
  String? dob;
  String? location;

  User(
      {this.id,
      this.fullname,
      this.email,
      this.gender,
      this.password,
      this.phonenumber,
      this.dob,
      this.location});


  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['id'],
      fullname: json['fullname'],
      email: json['email'],
      gender: json['gender'],
      password: json['phonenumber'],
      dob: json['dob'],
      location: json['location']
    );
  }
}
