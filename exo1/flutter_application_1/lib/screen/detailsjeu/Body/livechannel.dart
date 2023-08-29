import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/detailsjeu/Body/currentstream.dart';

class LiveChannel extends StatelessWidget {
  const LiveChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey, // Couleur de la ligne
                  height: 1, // Hauteur de la ligne
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Live channels"),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey, // Couleur de la ligne
                  height: 1, // Hauteur de la ligne
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            CurrentStream(
                image_live: 'lib/screen/live1.png',
                titre_live: 'The best champs in apex',
                viewers_live: '79.9k'),
            SizedBox(
              height: 30,
            ),
            CurrentStream(
                image_live: 'lib/screen/live2.png',
                titre_live: "The Wingman is too Power",
                viewers_live: "52.1k")
          ],
        )
      ],
    );

    // Live
  }
}
