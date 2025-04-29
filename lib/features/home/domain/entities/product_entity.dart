import 'dart:convert';

class ProductEntity {
    final int id;
    final int userId;
    final int type;
    final int ord;
    final String isUsed;
    final int categoryId;
    final int countryId;
    final int brandId;
    final String name;
    final String nameEn;
    final String details;
    final String detailsEn;
    final int colorId;
    final String tag;
    final String tagEn;
    final dynamic taxId;
    final String price;
    final int discount;
    final dynamic sku;
    final int quantity;
    final int notifiQuantity;
    final int stokeId;
    final dynamic repositoryNumber;
    final String img;
    final String productCode;
    final dynamic hashNumber;
    final dynamic barcode;
    final String barcodeNumber;
    final int weight;
    final int numViews;
    final String isActive;
    final dynamic deletedAt;
    final DateTime createdAt;
    final DateTime updatedAt;
    final dynamic userIp;
    final dynamic userPcInfo;
    final dynamic userAdded;
    final int priceAfterDiscount;
    final int isFavorite;
    final List<ProductAttribute> productAttributes;

    ProductEntity({
        required this.id,
        required this.userId,
        required this.type,
        required this.ord,
        required this.isUsed,
        required this.categoryId,
        required this.countryId,
        required this.brandId,
        required this.name,
        required this.nameEn,
        required this.details,
        required this.detailsEn,
        required this.colorId,
        required this.tag,
        required this.tagEn,
        required this.taxId,
        required this.price,
        required this.discount,
        required this.sku,
        required this.quantity,
        required this.notifiQuantity,
        required this.stokeId,
        required this.repositoryNumber,
        required this.img,
        required this.productCode,
        required this.hashNumber,
        required this.barcode,
        required this.barcodeNumber,
        required this.weight,
        required this.numViews,
        required this.isActive,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.userIp,
        required this.userPcInfo,
        required this.userAdded,
        required this.priceAfterDiscount,
        required this.isFavorite,
        required this.productAttributes,
    });

    factory ProductEntity.fromRawJson(String str) => ProductEntity.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductEntity.fromJson(Map<String, dynamic> json) => ProductEntity(
        id: json["id"],
        userId: json["user_id"],
        type: json["type"],
        ord: json["ord"],
        isUsed: json["is_used"],
        categoryId: json["category_id"],
        countryId: json["country_id"],
        brandId: json["brand_id"],
        name: json["name"],
        nameEn: json["name_en"],
        details: json["details"],
        detailsEn: json["details_en"],
        colorId: json["color_id"],
        tag: json["tag"],
        tagEn: json["tag_en"],
        taxId: json["tax_id"],
        price: json["price"],
        discount: json["discount"],
        sku: json["sku"],
        quantity: json["quantity"],
        notifiQuantity: json["notifi_quantity"],
        stokeId: json["stoke_id"],
        repositoryNumber: json["repository_number"],
        img: json["img"],
        productCode: json["product_code"],
        hashNumber: json["hash_number"],
        barcode: json["barcode"],
        barcodeNumber: json["barcode_number"],
        weight: json["weight"],
        numViews: json["num_views"] ?? 0,
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        userIp: json["user_ip"],
        userPcInfo: json["user_pc_info"],
        userAdded: json["user_added"],
        priceAfterDiscount: json["price_after_discount"],
        isFavorite: json["is_favorite"],
        productAttributes: List<ProductAttribute>.from(json["product_attributes"].map((x) => ProductAttribute.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "type": type,
        "ord": ord,
        "is_used": isUsed,
        "category_id": categoryId,
        "country_id": countryId,
        "brand_id": brandId,
        "name": name,
        "name_en": nameEn,
        "details": details,
        "details_en": detailsEn,
        "color_id": colorId,
        "tag": tag,
        "tag_en": tagEn,
        "tax_id": taxId,
        "price": price,
        "discount": discount,
        "sku": sku,
        "quantity": quantity,
        "notifi_quantity": notifiQuantity,
        "stoke_id": stokeId,
        "repository_number": repositoryNumber,
        "img": img,
        "product_code": productCode,
        "hash_number": hashNumber,
        "barcode": barcode,
        "barcode_number": barcodeNumber,
        "weight": weight,
        "num_views": numViews,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_ip": userIp,
        "user_pc_info": userPcInfo,
        "user_added": userAdded,
        "price_after_discount": priceAfterDiscount,
        "is_favorite": isFavorite,
        "product_attributes": List<dynamic>.from(productAttributes.map((x) => x.toJson())),
    };

    // Updated method to parse a List<EcommerceModel>
    static List<ProductEntity> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((data) => ProductEntity.fromJson(data)).toList();
  }
}

class ProductAttribute {
    final int id;
    final int ord;
    final int productId;
    final int sizeId;
    final int colorId;
    final String amount;
    final int newQuantity;
    final int allQuantity;
    final dynamic price;
    final dynamic img;
    final String isActive;
    final dynamic deletedAt;
    final DateTime createdAt;
    final DateTime updatedAt;
    final dynamic userIp;
    final dynamic userPcInfo;
    final Color size;
    final Color color;

    ProductAttribute({
        required this.id,
        required this.ord,
        required this.productId,
        required this.sizeId,
        required this.colorId,
        required this.amount,
        required this.newQuantity,
        required this.allQuantity,
        required this.price,
        required this.img,
        required this.isActive,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.userIp,
        required this.userPcInfo,
        required this.size,
        required this.color,
    });

    factory ProductAttribute.fromRawJson(String str) => ProductAttribute.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductAttribute.fromJson(Map<String, dynamic> json) => ProductAttribute(
        id: json["id"],
        ord: json["ord"],
        productId: json["product_id"],
        sizeId: json["size_id"],
        colorId: json["color_id"],
        amount: json["amount"],
        newQuantity: json["new_quantity"],
        allQuantity: json["all_quantity"],
        price: json["price"],
        img: json["img"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"] as String),
        updatedAt: DateTime.parse(json["updated_at"]),
        userIp: json["user_ip"],
        userPcInfo: json["user_pc_info"],
        size: Color.fromJson(json["size"]),
        color: Color.fromJson(json["color"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ord": ord,
        "product_id": productId,
        "size_id": sizeId,
        "color_id": colorId,
        "amount": amount,
        "new_quantity": newQuantity,
        "all_quantity": allQuantity,
        "price": price,
        "img": img,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_ip": userIp,
        "user_pc_info": userPcInfo,
        "size": size.toJson(),
        "color": color.toJson(),
    };
}

class Color {
    final int id;
    final int ord;
    final int attributeId;
    final String name;
    final String nameEn;
    final String value;
    final dynamic deletedAt;
    final String isActive;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String userIp;
    final String userPcInfo;
    final int userAdded;
    final dynamic valueEn;

    Color({
        required this.id,
        required this.ord,
        required this.attributeId,
        required this.name,
        required this.nameEn,
        required this.value,
        required this.deletedAt,
        required this.isActive,
        required this.createdAt,
        required this.updatedAt,
        required this.userIp,
        required this.userPcInfo,
        required this.userAdded,
        required this.valueEn,
    });

    factory Color.fromRawJson(String str) => Color.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json["id"],
        ord: json["ord"] ?? 0,
        attributeId: json["attribute_id"],
        name: json["name"],
        nameEn: json["name_en"],
        value: json["value"],
        deletedAt: json["deleted_at"] ?? '',
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        userIp: json["user_ip"] ?? '',
        userPcInfo: json["user_pc_info"] ?? '',
        userAdded: json["user_added"] ?? 0,
        valueEn: json["value_en"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ord": ord,
        "attribute_id": attributeId,
        "name": name,
        "name_en": nameEn,
        "value": value,
        "deleted_at": deletedAt,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user_ip": userIp,
        "user_pc_info": userPcInfo,
        "user_added": userAdded,
        "value_en": valueEn,
    };
}
