class Links {
  Links({
    this.mlbtv,
    this.wrapup,
    this.homeAudio,
    this.awayAudio,
    this.homePreview,
    this.awayPreview,
    this.preview,
    this.tvStation,
  });

  String mlbtv;
  String wrapup;
  String homeAudio;
  String awayAudio;
  String homePreview;
  String awayPreview;
  String preview;
  String tvStation;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    mlbtv: json["mlbtv"],
    wrapup: json["wrapup"],
    homeAudio: json["home_audio"],
    awayAudio: json["away_audio"],
    homePreview: json["home_preview"],
    awayPreview: json["away_preview"],
    preview: json["preview"],
    tvStation: json["tv_station"],
  );

  Map<String, dynamic> toJson() => {
    "mlbtv": mlbtv,
    "wrapup": wrapup,
    "home_audio": homeAudio,
    "away_audio": awayAudio,
    "home_preview": homePreview,
    "away_preview": awayPreview,
    "preview": preview,
    "tv_station": tvStation,
  };
}