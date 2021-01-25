import 'dart:convert';

import 'models/Game.dart';
import 'package:http/http.dart' as http;

class FootballService {

  static const API = 'http://gd2.mlb.com/components/game/mlb/year_2015/month_09/day_30/master_scoreboard.json';

  //Since Http Request are asyncronous you have to use a future
  static Future<List<Game>> getAllMatches() async {
    var data;
    var list;
    return http.get(
        API).then((value) {
      final jsonData = json.decode(value.body);
      if (value.statusCode == 200) {
        print("PRINT ${jsonData['data']['games']['game']}");
        data = jsonData['data']['games']['game'] as List;
        print("PRINT ${data}");
        list = data.map<Game>((json){
          return Game.fromJson(json);
        }).toList();
      } else {
        print('Error Showing Status');
      }
      return list;
    });
  }

  static Future<List<Game>> getListTodayMatches(String year, String month, String day) async {
    String API = 'http://gd2.mlb.com/components/game/mlb/year_${year}/month_${month}/day_${day}/master_scoreboard.json';
    var data;
    var list;
    return http.get(
        API).then((value) {
      final jsonData = json.decode(value.body);
      if (value.statusCode == 200) {
        print("PRINT ${jsonData['data']['games']['game']}");
        data = jsonData['data']['games']['game'] as List;
        print("PRINT ${data}");
        list = data.map<Game>((json){
          return Game.fromJson(json);
        }).toList();
      } else {
        print('Error Showing Status');
      }
      return list;
    });
  }


}