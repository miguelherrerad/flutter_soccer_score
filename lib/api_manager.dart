import 'package:http/http.dart';

class SoccerApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";
  static const api_key = "4215e2edfb85f7ac48d0621c7511aeb3";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_key
  };
}
