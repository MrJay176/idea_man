import 'Away.dart';

class Broadcast {
  Broadcast({
    this.home,
    this.away,
  });

  Away home;
  Away away;

  factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
    home: Away.fromJson(json["home"]),
    away: Away.fromJson(json["away"]),
  );

  Map<String, dynamic> toJson() => {
    "home": home.toJson(),
    "away": away.toJson(),
  };
}