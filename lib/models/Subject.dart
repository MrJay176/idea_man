
import 'Data.dart';

class Subject {
  Subject({
    this.subject,
    this.copyright,
    this.data,
  });

  String subject;
  String copyright;
  Data data;

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subject: json["subject"],
    copyright: json["copyright"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "subject": subject,
    "copyright": copyright,
    "data": data.toJson(),
  };
}