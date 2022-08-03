// To parse this JSON data, do
//
//     final previouseProjectContainer = previouseProjectContainerFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class PreviouseProjectContainer {
  PreviouseProjectContainer({
    required this.url,
    required this.name,
    required this.describtion,
    required this.techDescribtion,
  });

  final String url;
  final String name;
  final String describtion;
  final String techDescribtion;

  factory PreviouseProjectContainer.fromRawJson(String str) => PreviouseProjectContainer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PreviouseProjectContainer.fromJson(Map<String, dynamic> json) => PreviouseProjectContainer(
    url: json["url"] == null ? null : json["url"],
    name: json["name"] == null ? null : json["name"],
    describtion: json["describtion"] == null ? null : json["describtion"],
    techDescribtion: json["tech_describtion"] == null ? null : json["tech_describtion"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "name": name == null ? null : name,
    "describtion": describtion == null ? null : describtion,
    "tech_describtion": techDescribtion == null ? null : techDescribtion,
  };
}
