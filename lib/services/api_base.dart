//Api names
class Api {
  static const String base = "api-football-v1.p.rapidapi.com";
  static const String country = "/v2/countries";
  static String leagueByCountry({required String country, required String year}) {
    return "/v2/leagues/country/$country/$year";
  }
}