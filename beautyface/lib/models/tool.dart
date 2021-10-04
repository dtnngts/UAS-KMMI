part of 'beranda_tip.dart';

class Tools {
  String imageUrl;
  String title;
  String source;

  Tools({this.imageUrl, this.title, this.source});

  Tools.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    source = json['source'];
  }
}
