import 'package:http/http.dart' as http;
import 'dart:convert' as cov;

void main() async {
  final post = await fetchData();
  print(post.title);
  print("PostID:${post.id}");
  print(post.body);
}

Future<Post> fetchData() async {
  var url = Uri.https('fakestoreapi.com', '/products/1');
  final res = await http.get(url);

  if (res.statusCode != 200) {
    throw Exception("Faild to load the post: ${res.statusCode}");
  }
  Map<String, dynamic> data = cov.jsonDecode(res.body);

  return Post(data['title'], data['id'], data['description']);
}

class Post {
  String title;
  int id;
  String body;

  Post(this.title, this.id, this.body);
}
