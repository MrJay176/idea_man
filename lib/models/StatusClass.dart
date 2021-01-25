import 'enum.dart';

class StatusClass {
  StatusClass({
    this.status,
    this.ind,
    this.inningState,
    this.note,
    this.reason,
    this.inning,
    this.balls,
    this.strikes,
    this.outs,
    this.topInning,
    this.isPerfectGame,
    this.isNoHitter,
  });

  StatusEnum status;
  Ind ind;
  InningState inningState;
  String note;
  String reason;
  String inning;
  String balls;
  String strikes;
  String outs;
  DoubleHeaderSw topInning;
  DoubleHeaderSw isPerfectGame;
  DoubleHeaderSw isNoHitter;

  factory StatusClass.fromJson(Map<String, dynamic> json) => StatusClass(
    status: statusEnumValues.map[json["status"]],
    ind: indValues.map[json["ind"]],
    inningState: inningStateValues.map[json["inning_state"]],
    note: json["note"],
    reason: json["reason"],
    inning: json["inning"],
    balls: json["balls"],
    strikes: json["strikes"],
    outs: json["outs"],
    topInning: doubleHeaderSwValues.map[json["top_inning"]],
    isPerfectGame: doubleHeaderSwValues.map[json["is_perfect_game"]],
    isNoHitter: doubleHeaderSwValues.map[json["is_no_hitter"]],
  );

  Map<String, dynamic> toJson() => {
    "status": statusEnumValues.reverse[status],
    "ind": indValues.reverse[ind],
    "inning_state": inningStateValues.reverse[inningState],
    "note": note,
    "reason": reason,
    "inning": inning,
    "balls": balls,
    "strikes": strikes,
    "outs": outs,
    "top_inning": doubleHeaderSwValues.reverse[topInning],
    "is_perfect_game": doubleHeaderSwValues.reverse[isPerfectGame],
    "is_no_hitter": doubleHeaderSwValues.reverse[isNoHitter],
  };
}
