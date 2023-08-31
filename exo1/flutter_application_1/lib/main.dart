import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/homepage.dart';
import 'package:flutter_application_1/services/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Search Game",
        home: HomePage(),
        theme: CustomTheme.defaultTheme);
  }
}
