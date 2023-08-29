import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/screen/detailsjeu/Body/livechannel.dart';
import 'package:flutter_application_1/screen/detailsjeu/Nav/navJeu.dart';

class DetailsJeu extends StatefulWidget {
  final int jeuId;
  final Game game;

  const DetailsJeu({
    Key? key,
    required this.jeuId,
    required this.game,
  }) : super(key: key);

  @override
  State<DetailsJeu> createState() => _DetailsJeuState();
}

class _DetailsJeuState extends State<DetailsJeu> {
  @override
  State<DetailsJeu> createState() => _DetailsJeuState();
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavJeu(
              game: widget.game,
            ),
            // Body
            LiveChannel(),
          ],
        ),
      ),
    ));
  }
}
