import 'package:flutter/material.dart';

class IconBackSearch extends StatelessWidget {
  const IconBackSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 16.0,
        left: 16.0,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            )
          ],
        ));
  }
}
