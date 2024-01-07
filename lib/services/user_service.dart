import 'dart:convert';

import '../model/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<List<UserModel>> fetchUsers() async {
    final client = http.Client();
    final url = Uri.parse('https://randomuser.me/api/?results=100');
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);
      final result = json['results'] as List<dynamic>;
      final users = result.map((e) {
        return UserModel.fromMap(e);
      }).toList();
      return users;
    } else {
      throw Exception("Failed to load users");
    }
  }
}
