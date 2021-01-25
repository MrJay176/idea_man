import 'Media.dart';

class GameMedia {
  GameMedia({
    this.media,
  });

  Media media;

  factory GameMedia.fromJson(Map<String, dynamic> json) => GameMedia(
    media: Media.fromJson(json["media"]),
  );

  Map<String, dynamic> toJson() => {
    "media": media.toJson(),
  };
}