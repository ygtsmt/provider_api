import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_kullanimi/model/comment.dart';

class CommentService {
  Future<List<CommentModel>> getAllComments() async {
    const url = 'https://jsonplaceholder.typicode.com/comments';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final comments = json.map((e) {
        return CommentModel(
            postId: e['postId'],
            id: e['id'],
            name: e['name'],
            email: e['email'],
            body: e['body']);
      }).toList();
      return comments;
    }
    return [];
  }
}
