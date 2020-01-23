import 'package:flutter_test/flutter_test.dart';

import 'package:jsonplaceholder_offline/jsonplaceholder_offline.dart';
import 'package:jsonplaceholder_offline/models/post.dart';
import 'package:jsonplaceholder_offline/models/user.dart';

void main() {
  test('adds one to input values', () {
    JsonPlaceholder jsonplaceholder = JsonPlaceholder();
    var users = jsonplaceholder.getData<User>(length: 10);
    print(users);
  });
}
