import 'dart:convert';

import 'package:htt_get_post/models/todo_model.dart';
import 'package:http/http.dart' as http;

void main([List<String>? args]) async {
  Uri uri = Uri.parse("https://dummyjson.com/todos/add");

  User user = User(id: 0, todo: "Hello world", completed: false, userId: 12);

  http.Response response = await http.post(
    uri,
    body: jsonEncode(user.toMap()),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print("Addes Successfully");
  } else {
    print("Error ${response.statusCode}");
  }
}
