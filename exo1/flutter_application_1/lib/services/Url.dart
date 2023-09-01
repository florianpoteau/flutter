import 'package:http/http.dart' as http;

class Url {
  static Future<http.Response> getCategorie() {
    return http.get(
      Uri.parse('https://api.twitch.tv/helix/games/top?first=30'),
      headers: {
        'Client-Id': 'dxynj34ijdfo4d7hwmpxe9gci6x74c',
        'Authorization': 'Bearer qc1c7rttdtw3iy8iktf8s5b9yfmut1',
      },
    );
  }

  static Future<http.Response> getStreams({required String gameId}) {
    return http.get(
      Uri.parse('https://api.twitch.tv/helix/streams?game_id=$gameId'),
      headers: {
        'Client-Id': 'dxynj34ijdfo4d7hwmpxe9gci6x74c',
        'Authorization': 'Bearer qc1c7rttdtw3iy8iktf8s5b9yfmut1',
      },
    );
  }
}
