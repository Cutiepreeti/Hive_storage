// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str) as Map<String,dynamic>);


class User {
  User({
    this.data,
    this.support,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    data: Data.fromJson(json['data'] as Map<String,dynamic>),
    support: Supported.fromJson(json['support'] as Map<String,dynamic>),
  );

  Data? data;
  Supported? support;


}

class Data {
  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'] as int? ?? 0,
    email: json['email'] as String? ?? '',
    firstName: json['first_name'] as String? ?? '',
    lastName: json['last_name'] as String? ?? '',
    avatar: json['avatar'] as String? ?? '',
  );

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

}

class Supported {
  Supported({
    this.url,
    this.text,
  });

  factory Supported.fromJson(Map<String, dynamic> json) => Supported(
    url: json['url'] as String? ?? '',
    text: json['text'] as String? ?? '',
  );

  String? url;
  String? text;


}
