import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search Game",
      home: HomePage(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Color(0xFF060409),
              elevation: 0),
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          )),
    );
  }
}
