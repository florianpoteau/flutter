import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Search for the game",
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          iconColor: Colors.white),
    );
  }
}
