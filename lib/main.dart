import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(ReGreen());

class ReGreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData.light().copyWith(
      primaryColor: Color(0xFF0A0D22),
      scaffoldBackgroundColor: Color(0XFF090C22),
    ),
    home: InputPage(),
    );
  }
}

