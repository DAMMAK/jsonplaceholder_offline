library jsonplaceholder_offline;

import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:jsonplaceholder_offline/models/base.dart';
import 'package:jsonplaceholder_offline/models/data.dart';

import 'models/post.dart';
import 'models/user.dart';

/// A Calculator.
class JsonPlaceholder {
  var data;
  JsonPlaceholder() {
    this.loadData();
  }

  void loadData() async {
    // data = await rootBundle.loadString('assets/country.json');
    data = getData();
  }

  dynamic getData<T>({int length}) {
    if (length < 1) return throw ('length value must be greater than 1');
    if (length > 100) return throw ('length limit is 100');
    if (T == User) {
      print("It is User Class");
    }
    if (T == Post) {
      print("It is Post Class");
    }
    List<dynamic> dataUsers = data['users'];
    if (length == 1) {
      int rnd = Random().nextInt(dataUsers.length - 1);

      return BasePlaceholder.fromJson(dataUsers[rnd]);
    }
    // List<T> users = List<T>();
    // for (int i = 0; i <= length - 1; i++) {
    //   var random = Random().nextInt(dataUsers.length - 1);
    //   users.add(T.fromJson(dataUsers[random]));
    // }
    // return users;
    // print(data['users'][0]);
  }

  dynamic getPosts({length}) {
    if (length < 1) return throw ('length value must be greater than 1');
    if (length > 100) return throw ('length limit is 100');
  }
}
