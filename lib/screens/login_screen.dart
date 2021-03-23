import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 350,
            child: Container(
              color: Colors.blueGrey.shade800,
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Droan Insurence',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ]),
            )),
        Positioned(
          top: 200.0,
          bottom: 50.0,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 25),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Email or username',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
