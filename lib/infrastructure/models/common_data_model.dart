// To parse this JSON data, do
//
//     final commonDataModel = commonDataModelFromJson(jsonString);

import 'dart:convert';

CommonDataModel commonDataModelFromJson(String str) => CommonDataModel.fromJson(json.decode(str));

String commonDataModelToJson(CommonDataModel data) => json.encode(data.toJson());

class CommonDataModel {
  CommonDataModel({
    this.payload,
    this.status,
    this.code,
    this.messages,
  });

  Payload? payload;
  bool? status;
  int? code;
  dynamic messages;

  factory CommonDataModel.fromJson(Map<String, dynamic> json) => CommonDataModel(
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
    this.basic,
    this.about,
    this.social,
  });

  Basic? basic;
  About ?about;
  Social ?social;

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    basic: Basic.fromJson(json["basic"]),
    about: About.fromJson(json["about"]),
    social: Social.fromJson(json["social"]),
  );

  Map<String, dynamic> toJson() => {
    "basic": basic!.toJson(),
    "about": about!.toJson(),
    "social": social!.toJson(),
  };
}

class About {
  About({
    this.aboutUs,
    this.mission,
    this.vision,
    this.termsAndConditions,
    this.privacyPolicy,
  });

  String? aboutUs;
  String? mission;
  String ?vision;
  String? termsAndConditions;
  String ?privacyPolicy;

  factory About.fromJson(Map<String, dynamic> json) => About(
    aboutUs: json["about_us"],
    mission: json["mission"],
    vision: json["vision"],
    termsAndConditions: json["terms_and_conditions"],
    privacyPolicy: json["privacy_policy"],
  );

  Map<String, dynamic> toJson() => {
    "about_us": aboutUs,
    "mission": mission,
    "vision": vision,
    "terms_and_conditions": termsAndConditions,
    "privacy_policy": privacyPolicy,
  };
}

class Basic {
  Basic({
    this.email,
    this.phone,
    this.address,
    this.mapUrl,
  });

  String? email;
  String? phone;
  String? address;
  String? mapUrl;

  factory Basic.fromJson(Map<String, dynamic> json) => Basic(
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    mapUrl: json["map_url"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "phone": phone,
    "address": address,
    "map_url": mapUrl,
  };
}

class Social {
  Social({
    this.facebook,
    this.twitter,
    this.linkedin,
    this.instagram,
    this.snapchat,
    this.youtube,
  });

  String? facebook;
  String? twitter;
  String? linkedin;
  String? instagram;
  String? snapchat;
  String? youtube;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    facebook: json["facebook"],
    twitter: json["twitter"],
    linkedin: json["linkedin"],
    instagram: json["instagram"],
    snapchat: json["snapchat"],
    youtube: json["youtube"],
  );

  Map<String, dynamic> toJson() => {
    "facebook": facebook,
    "twitter": twitter,
    "linkedin": linkedin,
    "instagram": instagram,
    "snapchat": snapchat,
    "youtube": youtube,
  };
}
