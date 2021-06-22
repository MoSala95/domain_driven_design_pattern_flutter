// To parse this JSON data, do
//
//     final uSerProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) => UserProfileModel.fromJson(json.decode(str));

String uSerProfileModelToJson(UserProfileModel data) => json.encode(data.toJson());

class UserProfileModel {
  UserProfileModel({
    this.payload,
    this.status,
    this.code,
    this.messages,
  });

  Payload? payload;
  bool? status;
  int? code;
  dynamic messages;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => UserProfileModel(
    payload: Payload.fromJson(json["payload"]),
    status: json["status"],
    code: json["code"],
    messages: json["messages"],
  );

  Map<String, dynamic> toJson() => {
    "payload": payload!.toJson(),
    "status": status,
    "code": code,
    "messages": messages,
  };
}

class Payload {
  Payload({
    this.id,
    this.fullName,
    this.username,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.phoneCode,
    this.lang,
    this.type,
    this.status,
    this.isAnonymous,
    this.firebaseCloudMessagingToken,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.allUserMedia,
    this.logoUrl,

    this.userCategories,
  });

  String ? id;
  String ?fullName;
  String ?username;
  dynamic email;
  DateTime? emailVerifiedAt;
  String ?phone;
  String ?phoneCode;
  dynamic ?lang;
  String ?type;
  String ?status;
  bool ?isAnonymous;
  dynamic firebaseCloudMessagingToken;
  DateTime? deletedAt;
  DateTime? createdAt;
  DateTime ?updatedAt;
  AllUserMedia? allUserMedia;
  dynamic logoUrl;
  List<UserCategory>? userCategories;

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    id: json["id"],
    fullName: json["full_name"],
    username: json["username"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    phone: json["phone"],
    phoneCode: json["phone_code"],
    lang: json["lang"],
    type: json["type"],
    status: json["status"],
    isAnonymous: json["is_anonymous"],
    firebaseCloudMessagingToken: json["firebase_cloud_messaging_token"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    allUserMedia: AllUserMedia.fromJson(json["allUserMedia"]),
    logoUrl: json["logo_url"],
    userCategories: json["user_categories"]==null?<UserCategory>[]:List<UserCategory>.from(json["user_categories"].map((x) => UserCategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": fullName,
    "username": username,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "phone": phone,
    "phone_code": phoneCode,
    "lang": lang,
    "type": type,
    "status": status,
    "is_anonymous": isAnonymous,
    "firebase_cloud_messaging_token": firebaseCloudMessagingToken,
    "deleted_at": deletedAt,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "allUserMedia": allUserMedia!.toJson(),
    "logo_url": logoUrl,
    "user_categories": List<dynamic>.from(userCategories!.map((x) => x.toJson())),
  };
}

class AllUserMedia {
  AllUserMedia({
    this.logo,
  });

  dynamic logo;

  factory AllUserMedia.fromJson(Map<String, dynamic> json) => AllUserMedia(
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "logo": logo,
  };
}

class UserCategory {
  UserCategory({
    this.id,
    this.enName,
    this.arName,
    this.status,
    this.creatorId,

    this.nameByLang,
    this.icon,
  //  this.pivot,
  });

  String? id;
  String? enName;
  String? arName;
  String? status;
  String? creatorId;

  String? nameByLang;
  String? icon;
  //Pivot ?pivot;

  factory UserCategory.fromJson(Map<String, dynamic> json){
    try{
      return UserCategory(
        id: json["id"],
        enName: json["en_name"],
        arName: json["ar_name"],
        status: json["status"],
        creatorId: json["creator_id"],

        nameByLang: json["name_by_lang"],
        icon: json["icon"]??"",
        // pivot: Pivot.fromJson(json["pivot"]),
      );
    }catch(e){
      print(e.toString());

      return UserCategory();
    }

  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "en_name": enName,
    "ar_name": arName,
    "status": status,
    "creator_id": creatorId,

    "name_by_lang": nameByLang,
    "icon": icon ??"",
   // "pivot": pivot?.toJson(),
  };
}

class Pivot {
  Pivot({
    this.categoryableId,
    this.categoryId,
    this.categoryableType,
  });

  String? categoryableId;
  String? categoryId;
  String? categoryableType;

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
    categoryableId: json["categoryable_id"],
    categoryId: json["category_id"],
    categoryableType: json["categoryable_type"],
  );

  Map<String, dynamic> toJson() => {
    "categoryable_id": categoryableId,
    "category_id": categoryId,
    "categoryable_type": categoryableType,
  };
}
