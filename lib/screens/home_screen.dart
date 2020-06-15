import 'package:covid/questions/question_01.dart';
import 'package:covid/questions/question_02.dart';
import 'package:covid/questions/question_03.dart';
import 'package:covid/questions/question_04.dart';
import 'package:covid/tab/home_tab.dart';
import 'package:covid/tab/questions_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomeTab(_pageController, 1),
        QuestionsTab(_pageController, 2),
        Question01(_pageController, 3),
        Question02(_pageController, 4),
        Question03(_pageController, 5),
        Question04(),
      ],
    );
  }
}
