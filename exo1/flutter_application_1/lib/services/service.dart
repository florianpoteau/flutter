import 'dart:convert';

import 'package:flutter_application_1/models/jeu.dart';
import 'package:flutter_application_1/services/url.dart';
import 'package:logger/logger.dart';
import 'package:flutter_application_1/models/video.dart';

class Service {
  static Future<List<Game>> fetchGame() async {
    final response = await Url.getCategorie();

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      List<dynamic> gamesListData = responseData['data'];
      List<Game> gamesList = gamesListData.map((jsonData) {
        return Game.fromJson(jsonData);
      }).toList();
      return gamesList;
    } else {
      throw Exception('Echec de chargement des Catégorie');
    }
  }

  static Future<List<Stream>> fetchStream(gameId) async {
    final response = await Url.getStreams(gameId: gameId);

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      List<dynamic> streamsListData = responseData['data'];
      List<Stream> streamsList = streamsListData.map((jsonData) {
        return Stream.fromJson(jsonData);
      }).toList();

      return streamsList;
    } else {
      throw Exception('Echec de chargement des streams');
    }
  }
}
