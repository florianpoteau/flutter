import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/screen/detailsjeu/Nav/buttonfollowIcon.dart';
import 'package:flutter_application_1/screen/detailsjeu/Nav/iconBackSearch.dart';
import 'package:flutter_application_1/screen/detailsjeu/Nav/titreJeu.dart';
import 'package:flutter_application_1/screen/detailsjeu/Nav/viewersFollow.dart';

class NavJeu extends StatelessWidget {
  final Game game;
  const NavJeu({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          game.imageUrl,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 400,
          opacity: const AlwaysStoppedAnimation(.5),
        ),
        const IconBackSearch(),
        TitreJeu(game: game),
        ViewersFollows(game: game),
        ButtonfollowIcon(),
      ],
    );
  }
}
