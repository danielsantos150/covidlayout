import 'package:flutter/material.dart';

class Question02 extends StatelessWidget {
  final PageController pageController;
  final int page;

  Question02(this.pageController, this.page);

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
      appBar: AppBar(
        title: const Text('Como estou me sentindo?',
            style: TextStyle(color: Colors.white, fontFamily: "asap")),
        leading: IconButton(
          tooltip: 'Previous choice',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: <Widget>[
          _buildBodyBack(),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Você está com dor ou irritação na garganta?',
                          style: TextStyle(
                              color: Colors.white, fontFamily: "asap"),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(0),
                            onPressed: () {},
                            child: Icon(Icons.not_interested),
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(1),
                            onPressed: () {},
                            child: Icon(Icons.check_circle_outline),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Text('Você está com tosse seca?',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "asap"))),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(0),
                            onPressed: () {},
                            child: Icon(Icons.not_interested),
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(1),
                            onPressed: () {},
                            child: Icon(Icons.check_circle_outline),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Text(
                            'Você está com muita dificuldade para respirar?',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "asap"))),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(0),
                            onPressed: () {},
                            child: Icon(Icons.not_interested),
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(1),
                            onPressed: () {},
                            child: Icon(Icons.check_circle_outline),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Text('Você tem náuseas?',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "asap"))),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('(Vontade de vomitar)',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                                fontFamily: "Asep Bold"))),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(0),
                            onPressed: () {},
                            child: Icon(Icons.not_interested),
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: _color(1),
                            onPressed: () {},
                            child: Icon(Icons.check_circle_outline),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          pageController.jumpToPage(page);
        },
        label: Text(
          'Próximo',
          style: TextStyle(fontFamily: "asap"),
        ),
        icon: Icon(Icons.arrow_forward_ios),
        backgroundColor: Color.fromARGB(255, 73, 71, 157),
      ),
    );
  }
}

_color(elem) {
  if (elem == 0) {
    return Colors.red[200];
  } else {
    return Colors.green[200];
  }
}
