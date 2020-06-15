import 'package:flutter/material.dart';

class Question04 extends StatelessWidget {
  
  Question04();

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 54, 65),
            Color.fromARGB(255, 0, 160, 145)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildBodyBack(),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 120, 25, 5),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 5),
              child: Text(
                'SEU SCORE É...',
                style: TextStyle(
                    color: Colors.white, fontSize: 15.0, fontFamily: "asap"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "images/alice-transparent.png",
              height: 300,
              width: 150,
              fit: BoxFit.cover,
            ),
          )
        ],
      )      
    );
  }
}
