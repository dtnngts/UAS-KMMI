part 'tool.dart';
part 'cara.dart';

class TipCardType {
  static const String card1 = 'card1';
  static const String card2 = 'card2';
  static const String card3 = 'card3';
}

class BerandaTip {
  String cardType;
  String title;
  String subtitle;
  String backgroundImage;
  String backgroundImageSource;
  String message;
  String authorName;
  String role;
  String profileImage;
  List<String> tags;
  String description;
  String source;
  List<Tools> tools;
  List<Cara> cara;

  BerandaTip(
      {this.cardType,
      this.title,
      this.subtitle,
      this.backgroundImage,
      this.backgroundImageSource,
      this.message,
      this.authorName,
      this.role,
      this.profileImage,
      this.tags,
      this.source,
      this.tools,
      this.cara});

  BerandaTip.fromJson(Map<String, dynamic> json) {
    cardType = json['cardType'];
    title = json['title'];
    subtitle = json['subtitle'];
    backgroundImage = json['backgroundImage'];
    backgroundImageSource = json['backgroundImageSource'];
    message = json['message'];
    authorName = json['authorName'];
    role = json['role'];
    profileImage = json['profileImage'];
    tags = json['tags'].cast<String>();
    source = json['source'];
    if (json['tools'] != null) {
      tools = <Tools>[];
      json['tools'].forEach((v) {
        tools.add(Tools.fromJson(v));
      });
    }
    if (json['cara'] != null) {
      cara = <Cara>[];
      json['cara'].forEach((v) {
        cara.add(Cara.fromJson(v));
      });
    }
  }
}
