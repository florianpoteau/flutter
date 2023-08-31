import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/Nav/nav.dart';
import 'package:flutter_application_1/screen/homepage/PopularCategorie/popularCategorie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Nav(),
                PopularCategorie(
                    backgroundColor: Color.fromARGB(255, 59, 96, 167)),
              ],
            ),
          ),
        ));
  }
}
