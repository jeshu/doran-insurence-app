import 'dart:html';

import 'dart:io';

class User {
  final String id;
  final String name;
  final String age;
  final String email;

  User({this.age, this.email, this.id, this.name});
}

class UserModel {
  User _user;

  User get user {
    return _user;
  }

  Future<User> login(String email, String password) async {
    User authUser = new User(email: email, name: 'jehsu brij', age: '33');
    sleep(Duration(milliseconds: 300));
    return authUser;
  }

  Future<User> signup(String email, String password) async {
    User authUser = new User(email: email, name: 'jehsu brij', age: '33');
    sleep(Duration(milliseconds: 300));
    return authUser;
  }
}
