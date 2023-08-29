import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/screen/detailsjeu/detailsjeu.dart';

class Categorie extends StatelessWidget {
  final Game game;
  final int jeuId;

  const Categorie({
    super.key,
    required this.jeuId,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 63, 134, 146),
        child: Column(
          children: [
            Image.asset(
              game.imageUrl,
              width: 100.0,
            ),
            Container(
                child: Column(
              children: [
                Text(game.titre),
                Row(
                  children: [
                    Icon(Icons.remove_red_eye),
                    Text(
                      "${game.viewers} viewers",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsJeu(jeuId: jeuId, game: game),
                        ),
                      );
                    },
                    child: Text("Voir détail"))
              ],
            ))
          ],
        ));
  }
}
