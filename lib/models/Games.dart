import 'Game.dart';

class Games {

  Games({
    this.game,
    this.xmlnsXs,
    this.year,
    this.month,
    this.day,
    this.modifiedDate,
    this.nextDayDate,
  });

  List<Game> game;
  String xmlnsXs;
  String year;
  String month;
  String day;
  DateTime modifiedDate;
  DateTime nextDayDate;

  factory Games.fromJson(Map<String, dynamic> json) => Games(

    game: List<Game>.from(json["game"].map((x) => Game.fromJson(x))),
    xmlnsXs: json["xmlns:xs"],
    year: json["year"],
    month: json["month"],
    day: json["day"],
    modifiedDate: DateTime.parse(json["modified_date"]),
    nextDayDate: DateTime.parse(json["next_day_date"]),
  );

  Map<String, dynamic> toJson() => {
    "game": List<dynamic>.from(game.map((x) => x.toJson())),
    "xmlns:xs": xmlnsXs,
    "year": year,
    "month": month,
    "day": day,
    "modified_date": modifiedDate.toIso8601String(),
    "next_day_date": "${nextDayDate.year.toString().padLeft(4, '0')}-${nextDayDate.month.toString().padLeft(2, '0')}-${nextDayDate.day.toString().padLeft(2, '0')}",
  };
}
