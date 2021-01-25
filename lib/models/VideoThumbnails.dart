import 'Thumbnail.dart';

class VideoThumbnails {
  VideoThumbnails({
    this.thumbnail,
  });

  List<Thumbnail> thumbnail;

  factory VideoThumbnails.fromJson(Map<String, dynamic> json) => VideoThumbnails(
    thumbnail: List<Thumbnail>.from(json["thumbnail"].map((x) => Thumbnail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "thumbnail": List<dynamic>.from(thumbnail.map((x) => x.toJson())),
  };
}