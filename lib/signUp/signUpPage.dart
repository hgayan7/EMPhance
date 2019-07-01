import 'package:flutter/material.dart';
import 'package:flutter_emphance/signUp/signUpEmployee.dart';
import 'package:flutter_emphance/signUp/signUpEmployer.dart';
import 'package:flutter_emphance/utils/emphanceText.dart';
import 'package:flutter/cupertino.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Emphance(),
        ),
        backgroundColor: Colors.teal,
        body: SignUp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 100,
          left: 50,
          right: 50,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Text("I am an ",style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ButtonTheme(
                    minWidth: 300,
                    height: 70,
                    child: RaisedButton(
                      color: Colors.black54,
                      onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => SignUpEmployer()));
                      },
                      child: Text("Employer",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ButtonTheme(
                    minWidth: 300,
                    height: 70,
                    child: RaisedButton(
                      color: Colors.black54,
                      onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => SignUpEmployee()));
                      },
                      child: Text("Employee",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    )
                )

              ],
            ),
          ),
        )
      ],
    );
  }
}

