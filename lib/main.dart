import 'package:flutter/material.dart';
import 'package:flutter_emphance/loginPage.dart';
import 'package:flutter_emphance/signUp/signUpPage.dart';
import 'profileEmployee.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ProfileEmployee(),

      ),

    );
  }
}
