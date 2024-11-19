import 'package:http/http.dart' as http;
import 'dart:convert';

import 'model.dart'; // Import file model Article

class ApiService {
  final String baseUrl = 'https://api.spaceflightnewsapi.net/v4/articles/';

  Future<List<Article>> fetchArticles() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        List<dynamic> results = data['results'];
        return results.map((item) => Article.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
