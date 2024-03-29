import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<String> login(String email, String password) async {
   

   
    String hashedPassword = generateSHA256(password);


    Map<String, dynamic> payload = {
      'username': email,
      'password': hashedPassword,
      'grant_type': 'password',
    };


    Map<String, String> headers = {
      'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
      'Content-Type': 'application/x-www-form-urlencoded',
    };

   
    var response = await http.post(
      Uri.parse('https://apiv2stg.promilo.com/user/oauth/token'),
      headers: headers,
      body: payload,
    );

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return (response.statusCode.toString());
    }
  }

  static String generateSHA256(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }
}
