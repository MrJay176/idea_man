enum Free { NO }

final freeValues = EnumValues({
  "NO": Free.NO
});

enum MediaState { MEDIA_DEAD }

final mediaStateValues = EnumValues({
  "media_dead": MediaState.MEDIA_DEAD
});

enum Type { GAME }

final typeValues = EnumValues({
  "game": Type.GAME
});

enum GameType { R }

final gameTypeValues = EnumValues({
  "R": GameType.R
});

enum GamedaySw { P }

final gamedaySwValues = EnumValues({
  "P": GamedaySw.P
});

enum HomeTimeZone { ET, CT, PT }

final homeTimeZoneValues = EnumValues({
  "CT": HomeTimeZone.CT,
  "ET": HomeTimeZone.ET,
  "PT": HomeTimeZone.PT
});

enum OriginalDate { THE_20150728 }

final originalDateValues = EnumValues({
  "2015/07/28": OriginalDate.THE_20150728
});

enum Series { REGULAR_SEASON }

final seriesValues = EnumValues({
  "Regular Season": Series.REGULAR_SEASON
});

enum Ind { F }

final indValues = EnumValues({
  "F": Ind.F
});

enum InningState { TOP, BOTTOM }

final inningStateValues = EnumValues({
  "Bottom": InningState.BOTTOM,
  "Top": InningState.TOP
});

enum StatusEnum { FINAL }

final statusEnumValues = EnumValues({
  "Final": StatusEnum.FINAL
});

enum Ampm { PM }

final ampmValues = EnumValues({
  "PM": Ampm.PM
});

enum Division { E, C, W }

final divisionValues = EnumValues({
  "C": Division.C,
  "E": Division.E,
  "W": Division.W
});

enum SportCode { MLB }

final sportCodeValues = EnumValues({
  "mlb": SportCode.MLB
});

enum Day { TUE }

final dayValues = EnumValues({
  "TUE": Day.TUE
});

enum DoubleHeaderSw { N, Y }

final doubleHeaderSwValues = EnumValues({
  "N": DoubleHeaderSw.N,
  "Y": DoubleHeaderSw.Y
});


class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}