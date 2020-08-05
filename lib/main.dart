import 'package:flutter/material.dart';
import './pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _primaryColor = Colors.black;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProductSans',
        primaryColor: _primaryColor,
        accentColor: Color(0xff666666),
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: _primaryColor,
          textTheme: ButtonTextTheme.primary,
          minWidth: double.infinity,
          height: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      home: HomePage(),
    );
  }
}
