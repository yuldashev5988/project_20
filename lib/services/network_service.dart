import 'dart:convert';

import 'package:http/http.dart';
import 'package:logger/logger.dart';

class NetworkService{
  static var logger = Logger();

  static String BASE="api-football-v1.p.rapidapi.com";
static Map<String,String> headers={
  'X-RapidAPI-Key': 'ae809394dbmsh9cd6aa367e64f26p13ba00jsn0b9c61045ce8',
  'X-RapidAPI-Host': 'api-football-v1.p.rapidapi.com'
};
///APIs
static String API_GET_Country="/v2/countries";
static String leagueByCountry({required String country, required String year}) {
  return "/v2/leagues/country/$country/$year";

}
static Future<String> GET(String api, Map<String, dynamic> params) async {
  var uri = Uri.https(BASE, api, params);
  Response response = await get(uri, headers: headers);
  if (response.statusCode == 200) {
    return response.body;
  }
  return "";
}
static Map<String, dynamic> paramsGET() {
  Map<String, dynamic> params = {};
  return params;
}
// static parsingResponse(String response) {
//   dynamic json = jsonDecode(response);
//   List<Employee> employees = List<Employee>.from(
//       json['data'].map((employee) => Employee.fromJson(employee)));
//   logger.i(employees.runtimeType);
//   return employees;
// }



}