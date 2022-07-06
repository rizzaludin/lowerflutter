// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Activity welcomeFromJson(String str) => Activity.fromJson(json.decode(str));

String welcomeToJson(Activity data) => json.encode(data.toJson());

class Activity {
    Activity({
        required this.activity,
        required this.type,
        required this.participants,
        required this.price,
        required this.link,
        required this.key,
        required this.accessibility,
    });

    String activity;
    String type;
    int participants;
    double price;
    String link;
    String key;
    double accessibility;

    factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
