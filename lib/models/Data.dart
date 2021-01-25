import 'Games.dart';

class Data {
  Data({
    this.games,
  });

  Games games;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    games: Games.fromJson(json["games"]),
  );

  Map<String, dynamic> toJson() => {
    "games": games.toJson(),
  };
}
