import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter_soccer_score/models/soccer.dart';

class SoccerApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/fixtures?season=2020&league=39";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "4215e2edfb85f7ac48d0621c7511aeb3"
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api service: $body");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();
      return matches;
    }
  }
}
