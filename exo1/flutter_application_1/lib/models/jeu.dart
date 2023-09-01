class Game {
  final String id;
  final String titre;
  final String imageUrl;

  Game({
    required this.id,
    required this.titre,
    required this.imageUrl,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      titre: json['name'],
      imageUrl: json['box_art_url'],
    );
  }
}
