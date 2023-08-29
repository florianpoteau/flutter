import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/PopularCategorie/categorie.dart'; // Assurez-vous que le chemin est correct
import 'package:flutter_application_1/models/jeu.dart'; // Assurez-vous que le chemin est correct

class PopularCategorie extends StatefulWidget {
  final Color backgroundColor;

  const PopularCategorie({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  State<PopularCategorie> createState() => _PopularCategorieState();
}

class _PopularCategorieState extends State<PopularCategorie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
            child: Text(
              "Popular Categories",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Categorie(
                jeuId: 1,
                game: Game(
                  titre: "Apex Legends",
                  imageUrl: "lib/screen/apex.jpg",
                  viewers: "257.3k",
                  followers: "10.7 M",
                ),
              ),
              Categorie(
                jeuId: 2,
                game: Game(
                  titre: "Overwatch",
                  imageUrl: "lib/screen/overwatch.jpg",
                  viewers: "219.6k",
                  followers: "5.8 M",
                ),
              ),
              Categorie(
                jeuId: 3,
                game: Game(
                  titre: "Fortnite",
                  imageUrl: "lib/screen/fortnite.jpg",
                  viewers: "178.4k",
                  followers: "12.4 M",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
