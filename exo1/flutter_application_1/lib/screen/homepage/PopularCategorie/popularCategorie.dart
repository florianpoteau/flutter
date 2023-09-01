import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage/PopularCategorie/categorie.dart';
import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/services/url.dart';
import 'package:flutter_application_1/services/service.dart';
import 'package:logger/logger.dart';

class PopularCategorie extends StatefulWidget {
  final Color backgroundColor;

  const PopularCategorie({Key? key, required this.backgroundColor})
      : super(key: key);

  @override
  State<PopularCategorie> createState() => _PopularCategorieState();
}

class _PopularCategorieState extends State<PopularCategorie> {
  final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Game>>(
      future: Service.fetchGame(),
      builder: (BuildContext context, AsyncSnapshot<List<Game>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          List<Game> categoriesData = snapshot.data!;

          return Container(
            color: widget.backgroundColor,
            padding: EdgeInsets.only(bottom: 15),
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
                Column(
                  children: List.generate(
                    (categoriesData.length / 3).ceil(),
                    (index) {
                      int startIndex = index * 3;
                      int endIndex = startIndex + 3;
                      if (endIndex > categoriesData.length) {
                        endIndex = categoriesData.length;
                      }

                      List<Widget> rowWidgets = categoriesData
                          .sublist(startIndex, endIndex)
                          .map((categoryData) {
                        return Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5.0), // Add margin here
                            child: Align(
                              alignment: Alignment.center,
                              child: Categorie(
                                game: Game(
                                  id: categoryData.id,
                                  titre: categoryData.titre,
                                  imageUrl: categoryData.imageUrl
                                      .replaceAll('{width}', '300')
                                      .replaceAll('{height}', '400'),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList();

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: rowWidgets,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
