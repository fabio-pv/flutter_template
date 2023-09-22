import 'package:flutter_template/application/application.dart';

class CalendarModel {
  CalendarModel({
    this.date,
    this.season,
    this.seasonWeek,
    this.celebrations,
    this.weekday,
  });

  CalendarModel.fromJson(Map<String, dynamic> json) {
    date = json['date'] as String?;
    season = json['season'] as String?;
    seasonWeek = json['season_week'] as int?;
    weekday = json['weekday'] as String?;
    if (json['celebrations'] != null) {
      celebrations = [];
      json['celebrations'].forEach((v) {
        celebrations?.add(
          CelebrationsModel.fromJson(v as Map<String, dynamic>),
        );
      });
    }
  }

  String? date;
  String? season;
  int? seasonWeek;
  List<CelebrationsModel>? celebrations;
  String? weekday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['season'] = season;
    map['season_week'] = seasonWeek;
    if (celebrations != null) {
      map['celebrations'] = celebrations?.map((v) => v.toJson()).toList();
    }
    map['weekday'] = weekday;
    return map;
  }
}
