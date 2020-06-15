import 'package:flutter/material.dart';

class FinalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 54, 65),
            Color.fromARGB(255, 0, 160, 145)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );

    return Stack(
      children: <Widget>[
        Scaffold(
          body: _buildBodyBack(),
        )
      ],
    );
  }
}
