import 'package:flutter_test/flutter_test.dart';

import 'package:jsonplaceholder_offline/jsonplaceholder_offline.dart';
import 'package:jsonplaceholder_offline/models/photo.dart';
import 'package:jsonplaceholder_offline/models/post.dart';
import 'package:jsonplaceholder_offline/models/todo.dart';
import 'package:jsonplaceholder_offline/models/user.dart';

void main() {
  // test('adds one to input values', () {
  //   JsonPlaceholder jsonplaceholder = JsonPlaceholder();
  //   var users = jsonplaceholder.getData<Todo>(length: 1);
  //   print(users);
  // });

  group('testing Jsonplaceholder Offline package', () {
    // test('it should return an object', () {
    //   JsonPlaceholder jsonplaceholder = JsonPlaceholder();
    //   User user = jsonplaceholder.getData<User>(length: 1);
    //   expect(user, !null);
    // });

    test('it should have length > 1', () {
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<Map<String, dynamic>> users =
          jsonPlaceholder.getDataJson<Photo>(length: 20);
      print(users);
      expect(users.length, 20);
    });

    // test('it should throw an Exception', () {
    //   JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
    //   User user = jsonPlaceholder.getData(length: 2);
    //   expect(user, throw ('Invalid object type'));
    // });
  });
}

class Tester {}
