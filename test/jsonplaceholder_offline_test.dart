import 'package:flutter_test/flutter_test.dart';

import 'package:jsonplaceholder_offline/jsonplaceholder_offline.dart';
import 'package:jsonplaceholder_offline/models/comment.dart';
import 'package:jsonplaceholder_offline/models/photo.dart';
import 'package:jsonplaceholder_offline/models/post.dart';
import 'package:jsonplaceholder_offline/models/todo.dart';
import 'package:jsonplaceholder_offline/models/user.dart';

void main() {
  group('testing Jsonplaceholder Offline package', () {
    test('it should have length > 1', () {
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<Map<String, dynamic>> users =
          jsonPlaceholder.getJsonData<Photo>(length: 20);
      expect(users.length, 20);
    });

    test('testing PostComment', () {
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<dynamic> comments =
          jsonPlaceholder.getUserPosts(userId: 1, toJson: true);
      print(comments);
    });
  });
}

class Tester {}
