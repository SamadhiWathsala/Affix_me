import 'dart:convert';

import 'package:affix_me/model/album.dart';
import 'package:affix_me/model/article.dart';
import 'package:affix_me/model/user.dart';
import 'package:http/http.dart' as http;

class NetworkService{

//  Fetch user list
  Future<List<User>> fetchUsers() async{
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Iterable l = json.decode(response.body);
      List<User> users = List<User>.from(l.map((model)=> User.fromJson(model)));
      return users;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load todos list');
    }
  }

  //  Fetch article list
  Future<List<Article>> fetchArticles(int userId) async{
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$userId/posts'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Iterable l = json.decode(response.body);
      List<Article> articles = List<Article>.from(l.map((model)=> Article.fromJson(model)));
      return articles;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load todos list');
    }
  }

  //  Fetch album list
  Future<List<AlbumModel>> fetchAlbums(int userId) async{
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$userId/albums'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Iterable l = json.decode(response.body);
      List<AlbumModel> albums = List<AlbumModel>.from(l.map((model)=> AlbumModel.fromJson(model)));
      return albums;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load todos list');
    }
  }
}