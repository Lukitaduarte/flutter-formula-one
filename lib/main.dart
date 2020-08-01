import 'package:flutter/material.dart';
import 'package:formula_one/src/screens/home_screen.dart';

import 'src/components/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Formula1',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: FormulaPrimaryDark
      ),
      home: HomeScreen(),
    );
  }
}