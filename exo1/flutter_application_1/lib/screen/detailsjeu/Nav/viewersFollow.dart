import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/services/theme.dart';

class ViewersFollows extends StatelessWidget {
  final Game game;
  const ViewersFollows({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 80,
        left: 20,
        child: Row(
          children: [
            Transform.scale(
              scale: 0.75,
              child: const Icon(
                Icons.remove_red_eye,
                color: CustomTheme.ColorIconEyes,
              ),
            ),
            Text(
              " ${game.viewers} viewers",
              style: const TextStyle(color: Color.fromARGB(200, 20, 194, 238)),
            ),
            const SizedBox(width: 10),
            Transform.scale(
              scale: 0.75,
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            Text(
              " ${game.followers} followers",
              style: const TextStyle(color: Color.fromARGB(197, 255, 193, 7)),
            ),
          ],
        ));
  }
}
