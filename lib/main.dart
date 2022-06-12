


import 'package:escom_demo/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:escom_demo/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escom Demo app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes:{
        'login':(context) => LoginPage(),
        'home':(context)=> Homepage()
      }
    );
  }
}


