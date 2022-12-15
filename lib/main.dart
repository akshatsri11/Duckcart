import 'package:flutter/material.dart';

import 'package:tiobu/screens/HomePage.dart';
import 'package:tiobu/routes/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.homePage,
      home: HomePage(),
    );
  }
}
