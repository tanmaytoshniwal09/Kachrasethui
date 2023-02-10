import 'dart:convert';
import 'dart:io';
import 'package:kachrasethui/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserProvider with ChangeNotifier {
  //function to post data on an api
  static Future<void> postData(user) async {
    http.Response req = await http
        .post(
      Uri.parse('https://kachraseth.semikolan.co/register'),
      body: jsonEncode(
        {
          'name': user.displayName,
          'email': user.email,
          'profile_photo_path': user.photoURL
        },
      ),
    )
        .catchError((e) {
      print(e);
    });
    UserModel userSignedIn = UserModel.fromJson(jsonDecode(req.body));
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', userSignedIn.token);
    // notifyListeners();
    print(userSignedIn.user.name + ' ' + userSignedIn.token);
  }
}
