import 'dart:convert';

import 'package:htt_get_post/models/todo_model.dart';
import 'package:http/http.dart' as http;

void main([List<String>? args]) async {
  Uri uri = Uri.parse("https://dummyjson.com/todos/12");

  http.Response response = await http.put(
    uri,
    body: jsonEncode({'todo': 'Flutter'}),
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8",
    },
  );
  if (response.statusCode == 200) {
    print(response.body);
    print("Update Successfully");
  } else {
    print("Error ${response.statusCode}");
  }
}
