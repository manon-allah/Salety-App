import 'dart:convert';

class SliderEntity {
  final int id;
  final int ord;
  final String type;
  final String name;
  final String img;
  final dynamic urlL;
  final int withId;

  SliderEntity({
    required this.id,
    required this.ord,
    required this.type,
    required this.name,
    required this.img,
    required this.urlL,
    required this.withId,
  });

  factory SliderEntity.fromRawJson(String str) =>
      SliderEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SliderEntity.fromJson(Map<String, dynamic> json) => SliderEntity(
        id: json["id"],
        ord: json["ord"],
        type: json["type"],
        name: json["name"] ?? '',
        img: json["img"],
        urlL: json["url_l"] ?? '',
        withId: json["with_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ord": ord,
        "type": type,
        "name": name,
        "img": img,
        "url_l": urlL,
        "with_id": withId,
      };

  // Updated method to parse a List<EcommerceModel>
  static List<SliderEntity> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((data) => SliderEntity.fromJson(data)).toList();
  }
}
