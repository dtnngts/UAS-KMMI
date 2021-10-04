part of 'beranda_tip.dart';

class Cara {
  String imageUrl;
  String description;
  int durationInMinutes;

  Cara({this.imageUrl, this.description, this.durationInMinutes});

  Cara.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'] ?? '';
    description = json['description'] ?? '';
    durationInMinutes = json['durationInMinutes'] ?? 0;
  }
}
