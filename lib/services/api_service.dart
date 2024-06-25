import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String apiUrl = 'https://localhost:5000';

  Future<Map<String, dynamic>> fetchSummary(Paper paper) async {
    final response = await http.post(
      Uri.parse('$apiUrl/summarize'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(paper.toJson()),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch summary');
    }
  }
}
