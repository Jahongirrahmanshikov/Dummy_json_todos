import 'package:http/http.dart' as http;

void main([List<String>? args]) async {
  Uri uri = Uri.parse("https://dummyjson.com/todos/1");

  http.Response response = await http.delete(uri);
  if (response.statusCode == 200) {
    print("Deleted Successfully");
  } else {
    print("Error ${response.statusCode}");
  }
}
