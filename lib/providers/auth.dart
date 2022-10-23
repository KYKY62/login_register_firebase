import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  signUp(String email, String password) async {
    Uri url = Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDcpzID53uNXQNwzDnQtoURp_eZ1nbRorU",
    );

    var response = await http.post(url,
        body: jsonEncode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }));

    print(jsonDecode(response.body));
  }

  Login(String email, String password) async {
    Uri url = Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDcpzID53uNXQNwzDnQtoURp_eZ1nbRorU",
    );

    var response = await http.post(url,
        body: jsonEncode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }));

    print(jsonDecode(response.body));
  }
}
