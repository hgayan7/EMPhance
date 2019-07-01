import 'package:flutter/material.dart';

class Emphance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("EMP",style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto"
          ),),
          Text("hance",style: TextStyle(
              color: Colors.white54,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto"
          ),),
        ],
      ),
    );
  }
}
