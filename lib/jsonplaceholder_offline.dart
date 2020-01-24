library jsonplaceholder_offline;

import 'dart:math';
import 'package:jsonplaceholder_offline/models/album.dart';
import 'package:jsonplaceholder_offline/models/comment.dart';
import 'package:jsonplaceholder_offline/models/data.dart';
import 'package:jsonplaceholder_offline/models/todo.dart';

import 'models/photo.dart';
import 'models/post.dart';
import 'models/user.dart';

/// A Calculator.
class JsonPlaceholder {
  var data;
  JsonPlaceholder() {
    data = loadData();
  }

  dynamic getData<T>({int length}) {
    List<dynamic> dataComments = data['comments'];
    List<dynamic> dataAlbums = data['albums'];
    List<dynamic> dataUsers = data['users'];
    List<dynamic> dataPhoto = data['photos'];
    List<dynamic> dataTodo = data['todos'];
    List<dynamic> dataPosts = data['posts'];

    if (length < 1) return throw ('length value must be greater than 1');
    if (length > 100) return throw ('length limit is 100');

    switch (T) {
      case User:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataUsers.length - 1);
            return User.fromJson(dataUsers[rnd]);
          }
          List<User> users = List<User>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataUsers.length - 1);
            users.add(User.fromJson(dataUsers[random]));
          }
          return users;
        }
        break;
      case Photo:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataPhoto.length - 1);
            return Photo.fromJson(dataPhoto[rnd]);
          }
          List<Photo> photos = List<Photo>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataPhoto.length - 1);
            photos.add(Photo.fromJson(dataPhoto[random]));
          }
          return photos;
        }
        break;
      case Comment:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataComments.length - 1);
            return Comment.fromJson(dataComments[rnd]);
          }
          List<Comment> comments = List<Comment>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataComments.length - 1);
            comments.add(Comment.fromJson(dataComments[random]));
          }
          return comments;
        }
        break;
      case Album:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataAlbums.length - 1);
            return Album.fromJson(dataAlbums[rnd]);
          }
          List<Album> albums = List<Album>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataAlbums.length - 1);
            albums.add(Album.fromJson(dataAlbums[random]));
          }
          return albums;
        }
        break;
      case Todo:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataTodo.length - 1);
            return Todo.fromJson(dataTodo[rnd]);
          }
          List<Todo> todos = List<Todo>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataTodo.length - 1);
            todos.add(Todo.fromJson(dataTodo[random]));
          }
          return todos;
        }
        break;
      case Post:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataPosts.length - 1);
            return Post.fromJson(dataPosts[rnd]);
          }
          List<Post> posts = List<Post>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataPosts.length - 1);
            posts.add(Post.fromJson(dataPosts[random]));
          }
          return posts;
        }
        break;

      default:
        throw ("Invalid object type");
    }
  }

  dynamic getJsonData<T>({int length}) {
    List<dynamic> dataComments = data['comments'];
    List<dynamic> dataAlbums = data['albums'];
    List<dynamic> dataUsers = data['users'];
    List<dynamic> dataPhoto = data['photos'];
    List<dynamic> dataTodo = data['todos'];
    List<dynamic> dataPosts = data['posts'];

    if (length < 1) return throw ('length value must be greater than 1');
    if (length > 100) return throw ('length limit is 100');

    switch (T) {
      case User:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataUsers.length - 1);
            return dataUsers[rnd];
          }
          List<Map<String, dynamic>> users = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataUsers.length - 1);
            users.add(dataUsers[random]);
          }
          return users;
        }
        break;
      case Photo:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataPhoto.length - 1);
            return dataPhoto[rnd];
          }
          List<Map<String, dynamic>> photos = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataPhoto.length - 1);
            photos.add(dataPhoto[random]);
          }
          return photos;
        }
        break;
      case Comment:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataComments.length - 1);
            return dataComments[rnd];
          }
          List<Map<String, dynamic>> comments = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataComments.length - 1);
            comments.add(dataComments[random]);
          }
          return comments;
        }
        break;
      case Album:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataAlbums.length - 1);
            return dataAlbums[rnd];
          }
          List<Map<String, dynamic>> albums = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataAlbums.length - 1);
            albums.add(dataAlbums[random]);
          }
          return albums;
        }
        break;
      case Todo:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataTodo.length - 1);
            return dataTodo[rnd];
          }
          List<Map<String, dynamic>> todos = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataTodo.length - 1);
            todos.add(dataTodo[random]);
          }
          return todos;
        }
        break;
      case Post:
        {
          if (length == 1) {
            int rnd = Random().nextInt(dataPosts.length - 1);
            return dataPosts[rnd];
          }
          List<Map<String, dynamic>> posts = List<Map<String, dynamic>>();
          for (int i = 0; i <= length - 1; i++) {
            var random = Random().nextInt(dataPosts.length - 1);
            posts.add(dataPosts[random]);
          }
          return posts;
        }
        break;

      default:
        throw ("Invalid object type");
    }
  }
}
