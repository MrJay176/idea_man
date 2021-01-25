class Away {
  Away({
    this.tv,
    this.radio,
  });

  String tv;
  String radio;

  factory Away.fromJson(Map<String, dynamic> json) => Away(
    tv: json["tv"],
    radio: json["radio"],
  );

  Map<String, dynamic> toJson() => {
    "tv": tv,
    "radio": radio,
  };
}
