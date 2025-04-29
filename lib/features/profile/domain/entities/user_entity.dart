import 'dart:convert';

class UserEntitiy {
    final bool? status;
    final String? message;
    final Data data;

    UserEntitiy({
        required this.status,
        required this.message,
        required this.data,
    });

    factory UserEntitiy.fromRawJson(String str) => UserEntitiy.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserEntitiy.fromJson(Map<String, dynamic> json) => UserEntitiy(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    final int id;
    final String name;
    final String mobile;
    final String email;
    final dynamic profilePhotoPath;
    final int roleId;
    final String profilePhotoUrl;

    Data({
        required this.id,
        required this.name,
        required this.mobile,
        required this.email,
        required this.profilePhotoPath,
        required this.roleId,
        required this.profilePhotoUrl,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"],
        profilePhotoPath: json["profile_photo_path"],
        roleId: json["role_id"],
        profilePhotoUrl: json["profile_photo_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email,
        "profile_photo_path": profilePhotoPath,
        "role_id": roleId,
        "profile_photo_url": profilePhotoUrl,
    };
}
