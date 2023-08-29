import 'package:flutter/material.dart';

class CurrentStream extends StatelessWidget {
  final String image_live;
  final String titre_live;
  final String viewers_live;

  const CurrentStream({
    required this.image_live,
    required this.titre_live,
    required this.viewers_live,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image_live,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              SizedBox(width: 8), // Espacement entre l'image et le titre
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titre_live),
                    SizedBox(height: 4), // Espacement entre le titre et l'icône
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.75,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                        ),
                        Text(" $viewers_live viewers"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
