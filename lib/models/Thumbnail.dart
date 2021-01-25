class Thumbnail {
  Thumbnail({
    this.scenario,
    this.width,
    this.height,
    this.text,
  });

  String scenario;
  String width;
  String height;
  String text;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
    scenario: json["scenario"],
    width: json["width"],
    height: json["height"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "scenario": scenario,
    "width": width,
    "height": height,
    "text": text,
  };
}