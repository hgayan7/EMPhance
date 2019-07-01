import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_emphance/signUp/signUpPage.dart';
import 'package:flutter_emphance/utils/emphanceText.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool validateEmail = false;
  bool validatePassword = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 150.0,
          left: 40.0,
          right: 40.0,
          child: Container(
            child: Column(
              children: <Widget>[
                Emphance(),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    decoration: InputDecoration(
                        errorText: validateEmail ? "Email can't be empty":null,
                        errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:Colors.white
                            )
                        ),
                        prefixIcon: Icon(Icons.email,color: Colors.white,size: 30,),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        errorText: validatePassword ? "Password can't be empty":null,
                        errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:Colors.white
                            )
                        ),
                        prefixIcon: Icon(Icons.security,color: Colors.white,size: 30,),
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Password"
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ButtonTheme(
                    minWidth: 300,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: (){
                          setState(() {
                            emailController.text.isEmpty? validateEmail = true:validateEmail = false;
                            passwordController.text.isEmpty? validatePassword = true:validatePassword = false;
                          });
                      },
                      child: Text("Login",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Text("Forgot password?",style: TextStyle(
                      color: Colors.white54
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  height: 1.0,
                  color: Colors.white54,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?",style: TextStyle(
                        color: Colors.white54
                    ),),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    InkWell(
                      onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => SignUpPage()));
                      },
                      child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),)
                      ,
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ],
    );

  }
}

