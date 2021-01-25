class Pitcher {
  Pitcher({
    this.first,
    this.id,
    this.last,
    this.nameDisplayRoster,
    this.number,
    this.wins,
    this.losses,
    this.era,
    this.saves,
    this.svo,
  });

  String first;
  String id;
  String last;
  String nameDisplayRoster;
  String number;
  String wins;
  String losses;
  String era;
  String saves;
  String svo;

  factory Pitcher.fromJson(Map<String, dynamic> json) => Pitcher(
    first: json["first"],
    id: json["id"],
    last: json["last"],
    nameDisplayRoster: json["name_display_roster"],
    number: json["number"],
    wins: json["wins"],
    losses: json["losses"],
    era: json["era"],
    saves: json["saves"] == null ? null : json["saves"],
    svo: json["svo"] == null ? null : json["svo"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "id": id,
    "last": last,
    "name_display_roster": nameDisplayRoster,
    "number": number,
    "wins": wins,
    "losses": losses,
    "era": era,
    "saves": saves == null ? null : saves,
    "svo": svo == null ? null : svo,
  };
}