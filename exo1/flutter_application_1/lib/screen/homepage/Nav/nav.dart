import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/Nav/search.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'lib/screen/gameConsole.jpg',
          opacity: const AlwaysStoppedAnimation(.8),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(right: 10, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore the world of games',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Search(),
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
