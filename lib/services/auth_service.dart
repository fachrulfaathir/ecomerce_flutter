import 'dart:convert';

import 'package:ecomerce_flutter/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
    String baseUrl = 'http://10.0.2.2:8000/api';

    Future<UserModel> register({
      String? name,
      String? username,
      String? email,
      String? password,
    }) async {
      try {
        var url = '$baseUrl/register';

        var headers = {
          'Content-Type': 'application/json',
        };

        var body = jsonEncode({
          'name': name,
          'email': email,
          'username': username,
          'password': password,
        });

        var response = await http.post(
          Uri.parse(url),
          headers: headers,
          body: body,
        );

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body)['data'];

          UserModel user = UserModel.fromJson(data['user']);

          user.token = 'Bearer ${data['access_token']}';

          return user;
        } else {
          throw Exception('Failed to register');
        }
      } catch (e) {
        rethrow;
      }
    }
}