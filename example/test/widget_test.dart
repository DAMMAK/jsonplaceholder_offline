import 'package:flutter_test/flutter_test.dart';
import 'package:jsonplaceholder_offline/jsonplaceholder_offline.dart';
import 'package:jsonplaceholder_offline/models/user.dart';

void main() {
  test('Testing MOCKREST METHOS', () async {
    JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
    print("Getting Started");
    var data = await jsonPlaceholder.mockRest<User>(
        httpMethod: RESTMETHOD.GET, length: 10, delay: 20);
    print(data);
  });
}
