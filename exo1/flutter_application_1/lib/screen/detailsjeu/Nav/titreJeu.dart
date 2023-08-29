import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';

class TitreJeu extends StatelessWidget {
  final Game game;
  const TitreJeu({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 110,
      left: 15,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          game.titre,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
