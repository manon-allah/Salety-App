import 'dart:convert';

class LoginEntity {
    final bool status;
    final String message;
    final Data data;

    LoginEntity({
        required this.status,
        required this.message,
        required this.data,
    });

    factory LoginEntity.fromRawJson(String str) => LoginEntity.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
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
    final int roleId;
    final dynamic address;
    final dynamic profilePhotoPath;
    final String token;
    final String profilePhotoUrl;

    Data({
        required this.id,
        required this.name,
        required this.mobile,
        required this.email,
        required this.roleId,
        required this.address,
        required this.profilePhotoPath,
        required this.token,
        required this.profilePhotoUrl,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"],
        roleId: json["role_id"],
        address: json["address"],
        profilePhotoPath: json["profile_photo_path"],
        token: json["token"],
        profilePhotoUrl: json["profile_photo_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email,
        "role_id": roleId,
        "address": address,
        "profile_photo_path": profilePhotoPath,
        "token": token,
        "profile_photo_url": profilePhotoUrl,
    };
}
