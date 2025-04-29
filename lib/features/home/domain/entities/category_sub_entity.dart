import 'dart:convert';

class CategorySubEntity {
  final int id;
  final int ord;
  final String type;
  final int parentId;
  final String name;
  final String img;
  final String details;
  final List<CategorySubEntity> subCat;

  CategorySubEntity({
    required this.id,
    required this.ord,
    required this.type,
    required this.parentId,
    required this.name,
    required this.img,
    required this.details,
    required this.subCat,
  });

  factory CategorySubEntity.fromRawJson(String str) =>
      CategorySubEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategorySubEntity.fromJson(Map<String, dynamic> json) =>
      CategorySubEntity(
        id: json["id"],
        ord: json["ord"],
        type: json["type"],
        parentId: json["parent_id"],
        name: json["name"],
        img: json["img"],
        details: json["details"],
        subCat: json["sub_cat"] != null
            ? List<CategorySubEntity>.from(
                json["sub_cat"].map((x) => CategorySubEntity.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ord": ord,
        "type": type,
        "parent_id": parentId,
        "name": name,
        "img": img,
        "details": details,
        "sub_cat": List<dynamic>.from(subCat.map((x) => x.toJson())),
      };

  // Updated method to parse a List<EcommerceModel>
  static List<CategorySubEntity> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((data) => CategorySubEntity.fromJson(data)).toList();
  }
}
