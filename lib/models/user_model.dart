import 'dart:io';

import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String age;
  final String email;

  User({this.age, this.email, this.id, this.name});
}

class UserModel extends ChangeNotifier {
  User _user;
  bool _isLoggedIn = false;

  User get user {
    return _user;
  }

  bool get isLoggedIn {
    return _isLoggedIn;
  }

  void login(String email, String password) async {
    User authUser = new User(email: email, name: 'jehsu brij', age: '33');
    sleep(Duration(milliseconds: 300));
    _user = authUser;
    _isLoggedIn = true;
    notifyListeners();
  }

  void signup(String email, String password) async {
    User authUser = new User(email: email, name: 'jehsu brij', age: '33');
    sleep(Duration(milliseconds: 300));
    _user = authUser;
    _isLoggedIn = true;
    notifyListeners();
  }
}
