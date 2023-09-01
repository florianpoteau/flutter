class Stream {
  final String id;
  final String game_id;
  final String title;
  final String description;
  final int viewersCount;
  final String thumbnail_url;

  Stream(
      {required this.description,
      required this.thumbnail_url,
      required this.id,
      required this.game_id,
      required this.title,
      required this.viewersCount});

  factory Stream.fromJson(Map<String, dynamic> json) {
    return Stream(
      id: json['id'],
      game_id: json['game_id'],
      description: json['title'],
      title: json['game_name'],
      thumbnail_url: json['thumbnail_url'],
      viewersCount: json['viewer_count'],
    );
  }
}
