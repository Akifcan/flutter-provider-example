import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class User extends ChangeNotifier{
  final int id;
  final String name;
  final String username;
  final String email;

  User({this.id, this.name, this.username, this.email});

  factory User.fromJson(Map json){
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email']
    );
  }

  getUser(int id) async{
    var response = await http.get('https://jsonplaceholder.typicode.com/users/$id');
    var body = json.decode(response.body);
    User user = User.fromJson(body);
    return user;
  }

}