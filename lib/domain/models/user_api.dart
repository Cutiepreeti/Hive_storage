// To parse this JSON data, do
//
//     final listUser = listUserFromJson(jsonString);

import 'dart:convert';

ListUser listUserFromJson(String str) => ListUser.fromJson(json.decode(str) as Map<String,dynamic>);


class ListUser {
  ListUser({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory ListUser.fromJson(Map<String, dynamic> json) => ListUser(
    page: json['page'] as int? ?? 0,
    perPage: json['per_page'] as int? ?? 0,
    total: json['total'] as int? ?? 0,
    totalPages: json['total_pages'] as int? ?? 0,
    data: List<Datum>.from((json['data'] as List<dynamic>).map<dynamic>((dynamic x) => Datum.fromJson(x as Map<String,dynamic>))),
    support: Support.fromJson(json['support'] as Map<String,dynamic>),
  );

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum>? data;
  Support? support;

}

class Datum {
  Datum({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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

class Support {
  Support({
    this.url,
    this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json['url'] as String? ?? '',
    text: json['text'] as String? ?? '',
  );

  String? url;
  String? text;

}
