import 'E.dart';
import 'R.dart';

class Linescore {
  Linescore({
    this.inning,
    this.r,
    this.h,
    this.e,
    this.hr,
    this.sb,
    this.so,
  });

  List<E> inning;
  R r;
  E h;
  E e;
  E hr;
  E sb;
  E so;

  factory Linescore.fromJson(Map<String, dynamic> json) => Linescore(
    inning: List<E>.from(json["inning"].map((x) => E.fromJson(x))),
    r: R.fromJson(json["r"]),
    h: E.fromJson(json["h"]),
    e: E.fromJson(json["e"]),
    hr: E.fromJson(json["hr"]),
    sb: E.fromJson(json["sb"]),
    so: E.fromJson(json["so"]),
  );

  Map<String, dynamic> toJson() => {
    "inning": List<dynamic>.from(inning.map((x) => x.toJson())),
    "r": r.toJson(),
    "h": h.toJson(),
    "e": e.toJson(),
    "hr": hr.toJson(),
    "sb": sb.toJson(),
    "so": so.toJson(),
  };
}
