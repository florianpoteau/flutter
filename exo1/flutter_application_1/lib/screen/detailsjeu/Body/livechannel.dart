import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/video.dart';
import 'package:flutter_application_1/screen/detailsjeu/Body/currentstream.dart';
import 'package:flutter_application_1/services/url.dart';
import 'package:flutter_application_1/services/service.dart';
import 'package:logger/logger.dart';

class LiveChannel extends StatelessWidget {
  final String gameId;
  LiveChannel({super.key, required this.gameId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Service.fetchStream(gameId),
        builder: (BuildContext context, AsyncSnapshot<List<Stream>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Stream> categoriesData = snapshot.data!;
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
                  children: categoriesData.map((categoryData) {
                    return CurrentStream(
                      stream: Stream(
                        id: categoryData.id,
                        game_id: categoryData.game_id,
                        thumbnail_url: categoryData.thumbnail_url
                            .replaceAll('{width}', '300')
                            .replaceAll('{height}', '200'),
                        title: categoryData.title,
                        viewersCount: categoryData.viewersCount,
                        description: categoryData.description,
                      ),
                    );
                  }).toList(),
                ),
              ],
            );
          }
        });

    // Live
  }
}
