import 'dart:convert';
import 'dart:developer';

import 'package:project_20/model/league_model.dart';
import 'package:project_20/services/api_base.dart';
import 'package:project_20/services/api_main.dart';

import '../model/country_model.dart';

class ApiService {

  static  Future<List<Country>> getCountries()  async{
    List<Country> countryList = [];
    final response = await  API().GET(path: Api.country);
    // log("response status code : ${response.statusCode}");
    // log("response  : $response");
    if(response.statusCode == 200 ) {
      try {
        final responseBody = jsonDecode(response.body);
        for(Country c in responseBody['api']["countries"] ) {
          countryList.add(c);
        }
      } catch (e) {
        log("error : $e");
      }
    }
    return countryList;
  }

  static Future<League?> getLeagueByCountry ({required String country, required String year}) async {
    final response = await API().GET(path: Api.leagueByCountry(country: country, year: year), params: {});
    log("response status code : ${response.statusCode}");
    log("response  : $response");
    if(response.statusCode == 200 ) {
      return League(); // League.fromJson()
    }
    return null;
  }

}