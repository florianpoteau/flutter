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
}
