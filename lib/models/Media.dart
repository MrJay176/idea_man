import 'enum.dart';

class Media {
  Media({
    this.type,
    this.calendarEventId,
    this.start,
    this.title,
    this.hasMlbtv,
    this.hasMilbtv,
    this.thumbnail,
    this.free,
    this.enhanced,
    this.mediaState,
  });

  Type type;
  String calendarEventId;
  DateTime start;
  String title;
  String hasMlbtv;
  String hasMilbtv;
  String thumbnail;
  Free free;
  DoubleHeaderSw enhanced;
  MediaState mediaState;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    type: typeValues.map[json["type"]],
    calendarEventId: json["calendar_event_id"],
    start: DateTime.parse(json["start"]),
    title: json["title"],
    hasMlbtv: json["has_mlbtv"],
    hasMilbtv: json["has_milbtv"],
    thumbnail: json["thumbnail"],
    free: freeValues.map[json["free"]],
    enhanced: doubleHeaderSwValues.map[json["enhanced"]],
    mediaState: mediaStateValues.map[json["media_state"]],
  );

  Map<String, dynamic> toJson() => {
    "type": typeValues.reverse[type],
    "calendar_event_id": calendarEventId,
    "start": start.toIso8601String(),
    "title": title,
    "has_mlbtv": hasMlbtv,
    "has_milbtv": hasMilbtv,
    "thumbnail": thumbnail,
    "free": freeValues.reverse[free],
    "enhanced": doubleHeaderSwValues.reverse[enhanced],
    "media_state": mediaStateValues.reverse[mediaState],
  };
}