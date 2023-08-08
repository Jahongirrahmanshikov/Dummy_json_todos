import 'dart:convert';
import 'package:htt_get_post/models/todo_model.dart';
import 'package:http/http.dart' as http;

void main([List<String>? args]) async {
  Uri uri = Uri.parse("https://dummyjson.com/todos/1");
  http.Response response = await http.get(uri);

  if (response.statusCode == 200) {
    User todos = User.fromJson(jsonDecode(response.body));
    print(todos);
  } else {
    print("Error ${response.statusCode}");
  }
}
