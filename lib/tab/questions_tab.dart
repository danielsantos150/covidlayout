import 'package:flutter/material.dart';

class QuestionsTab extends StatelessWidget {
  final PageController pageController;
  final int page;

  QuestionsTab(this.pageController, this.page);

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
            padding: EdgeInsets.fromLTRB(25, 100, 25, 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Dados Cadastrais:",
                style: TextStyle(
                    color: Colors.white, fontSize: 20.0, fontFamily: "asap"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 120, 25, 5),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 5),
              child: Form(
                child: SizedBox(
                    width: 230.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Nome Completo",
                            labelStyle: TextStyle(
                                color: Colors.white, fontFamily: "asap"),
                          ),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 201, 210, 0)),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                              labelText: "Idade",
                              labelStyle: TextStyle(
                                  color: Colors.white, fontFamily: "asap")),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 201, 210, 0)),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Gênero",
                              labelStyle: TextStyle(
                                  color: Colors.white, fontFamily: "asap")),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 201, 210, 0)),
                        ),
                      ],
                    )),
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          pageController.jumpToPage(page);
        },
        label: Text('Próximo',
        style: TextStyle(
          fontFamily: "asap"
        ),),
        icon: Icon(Icons.arrow_forward_ios),
        backgroundColor: Color.fromARGB(255, 73, 71, 157),
      ),
    );
  }
}
