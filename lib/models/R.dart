class R {
  R({
    this.home,
    this.away,
    this.diff,
  });

  String home;
  String away;
  String diff;

  factory R.fromJson(Map<String, dynamic> json) => R(
    home: json["home"],
    away: json["away"],
    diff: json["diff"],
  );

  Map<String, dynamic> toJson() => {
    "home": home,
    "away": away,
    "diff": diff,
  };

}