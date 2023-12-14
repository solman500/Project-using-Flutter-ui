// To parse this JSON data, do
//
//     final userFromApi = userFromApiFromJson(jsonString);

import 'dart:convert';

UserFromApi userFromApiFromJson(String str) => UserFromApi.fromJson(json.decode(str));

String userFromApiToJson(UserFromApi data) => json.encode(data.toJson());

class UserFromApi {
    int userId;
    int id;
    String title;

    UserFromApi({
        required this.userId,
        required this.id,
        required this.title,
    });

    factory UserFromApi.fromJson(Map<String, dynamic> json) => UserFromApi(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
    };
}
