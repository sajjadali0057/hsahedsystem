import 'dart:convert';

import '../../../constants/constants.dart';
import '../../models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<UserModel> loginUser(
      String deviceid, String email, String password) async {
    final Map<String, dynamic> requestBody = {
      'device_id': deviceid,
      'email': email,
      'password': password,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );
      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        return UserModel(accessToken: '', email: '');
      }
    } catch (e) {
      return UserModel(accessToken: '', email: '');
    }
  }
}
