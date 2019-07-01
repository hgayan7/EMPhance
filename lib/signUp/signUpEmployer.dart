import 'package:flutter/material.dart';
import 'package:flutter_emphance/utils/emphanceText.dart';

class SignUpEmployer extends StatefulWidget {
  @override
  _SignUpEmployerState createState() => _SignUpEmployerState();
}

class _SignUpEmployerState extends State<SignUpEmployer> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final companyController = TextEditingController();
  final idController = TextEditingController();
  final designationController = TextEditingController();
  bool email = false;
  bool password = false;
  bool name = false;
  bool company = false;
  bool designation = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Emphance(),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            left: 20.0,
            right: 20.0,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text("Employer registration",style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white
                  ),),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                  ),
                  Container(
                    height: 1.5,
                    color: Colors.white54,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
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
                          errorText: email ? "Email can't be empty":null,
                          errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color:Colors.white
                              )
                          ),
                          prefixIcon: Icon(Icons.email,color: Colors.white,size: 30,),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    TextField(
                      style: TextStyle(color: Colors.white),
                      controller: passwordController,
                      decoration: InputDecoration(
                          errorText: password ? "Password can't be empty":null,
                          errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color:Colors.white
                              )
                          ),
                          prefixIcon: Icon(Icons.security,color: Colors.white,size: 30,),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    TextField(
                      style: TextStyle(color: Colors.white),
                      controller: nameController,
                      decoration: InputDecoration(
                          errorText: name ? "Name can't be empty":null,
                          errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color:Colors.white
                              )
                          ),
                          prefixIcon: Icon(Icons.person,color: Colors.white,size: 30,),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    TextField(
                      style: TextStyle(color: Colors.white),
                      controller: companyController,
                      decoration: InputDecoration(
                          errorText: company ? "Company can't be empty":null,
                          errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color:Colors.white
                              )
                          ),
                          prefixIcon: Icon(Icons.streetview,color: Colors.white,size: 30,),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Company",
                          labelStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    TextField(
                      style: TextStyle(color: Colors.white),
                      controller: designationController,
                      decoration: InputDecoration(
                          errorText: designation ? "Designation can't be empty":null,
                          errorStyle: TextStyle(color: Colors.white54,fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color:Colors.white
                              )
                          ),
                          prefixIcon: Icon(Icons.perm_identity,color: Colors.white,size: 30,),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "Designation",
                          labelStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                  ),
                ButtonTheme(
                minWidth: 320,
                height: 50,
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: (){
                    setState(() {
                      emailController.text.isEmpty? email = true:email = false;
                      passwordController.text.isEmpty? password = true:password = false;
                      nameController.text.isEmpty? name = true:name = false;

                    });
                  },
                  child: Text("Register",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                  ),),
                )
            )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
