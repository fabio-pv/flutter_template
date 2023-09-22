class CelebrationsModel {
  CelebrationsModel({
    this.title,
    this.colour,
    this.rank,
    this.rankNum,
  });

  CelebrationsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    colour = json['colour'] as String?;
    rank = json['rank'] as String?;
    rankNum = json['rank_num'] as double?;
  }

  String? title;
  String? colour;
  String? rank;
  double? rankNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['colour'] = colour;
    map['rank'] = rank;
    map['rank_num'] = rankNum;
    return map;
  }
}
