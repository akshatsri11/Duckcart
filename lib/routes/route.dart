import 'package:flutter/material.dart';

import 'package:tiobu/screens/BonusScreen.dart';
import 'package:tiobu/screens/HomePage.dart';
import 'package:tiobu/constants/constants.dart';

const String homePage = 'creators';

const String recordScreen = 'donars';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());

    case recordScreen:
      return MaterialPageRoute(
          builder: (context) => RecordScreen(
              name: myController1.text,
              amount: myController.text,
              message: myController2.text));
    default:
      throw ('This route name does not exit');
  }
}
