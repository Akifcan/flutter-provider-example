import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Post extends ChangeNotifier{
  final int userId;
  final int id;
  final String title;
  final String body;
  List<Post> posts = [];
  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map json){
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body']  
    );
  }
  
  getAll() async{
    var response = await http.get('https://jsonplaceholder.typicode.com/posts');
    List data = json.decode(response.body);
    posts = data.map(
      (post) => Post.fromJson(post)
    ).toList();
    notifyListeners();
  }
}