class E {
  E({
    this.home,
    this.away,
  });

  String home;
  String away;

  factory E.fromJson(Map<String, dynamic> json) => E(
    home: json["home"],
    away: json["away"],
  );

  Map<String, dynamic> toJson() => {
    "home": home,
    "away": away,
  };
}