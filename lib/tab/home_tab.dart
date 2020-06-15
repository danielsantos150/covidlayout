import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeTab extends StatelessWidget {
  final PageController pageController;
  final int page;

  HomeTab(this.pageController, this.page);

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
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              pageController.jumpToPage(page);
            },
            label: Text('Vamos lá'),
            icon: Icon(Icons.arrow_forward_ios),
            backgroundColor: Color.fromARGB(255, 73, 71, 157),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 25, top: 150),
            child: Column(children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 230.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: ["Olá, eu sou a"],
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,
                      textStyle: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          letterSpacing: 1.0,
                          color: Colors.white,
                          fontFamily: "asap"),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 230.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: ["Alice,"],
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,
                      textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 65,
                          letterSpacing: 1.0,
                          fontFamily: "asap",
                          color: Color.fromARGB(255, 201, 210, 0)),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 230.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: [
                        "vim do seu Sicoobnet para ter a certeza que está tudo bem com você!"
                      ],
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,
                      textStyle: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontFamily: "asap",
                          letterSpacing: 1.0,
                          color: Colors.white),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
            ])),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 330),
          child: Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 230.0,
                child: TypewriterAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      "Antes de entrar no seu local de trabalho, que tal responder umas perguntinhas sobre a sua saúde?"
                    ],
                    totalRepeatCount: 1,
                    displayFullTextOnTap: true,
                    textStyle: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontFamily: "asap"),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
              ),
            )
          ]),
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
    );
  }
}
