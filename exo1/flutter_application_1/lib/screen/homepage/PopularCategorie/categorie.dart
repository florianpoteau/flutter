import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/screen/detailsjeu/detailsjeu.dart';
import 'package:flutter_application_1/services/theme.dart';

class Categorie extends StatelessWidget {
  final Game game;

  const Categorie({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 280),
      child: Container(
          padding: EdgeInsets.all(5),
          color: CustomTheme.defaultTheme.primaryColor,
          child: Column(
            children: [
              Image.network(
                game.imageUrl,
                width: 100.0,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth:
                              150), // Définissez la largeur maximale souhaitée
                      child: Text(
                        game.titre,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.65,
                          child: const Icon(
                            Icons.remove_red_eye,
                            color: CustomTheme.ColorIconEyes,
                          ),
                        ),
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
                            builder: (context) => DetailsJeu(game: game),
                          ),
                        );
                      },
                      child: Text("Voir détail"),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
