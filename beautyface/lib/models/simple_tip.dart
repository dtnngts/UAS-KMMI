class SimpleTip {
  String dishImage;
  String title;
  String harga;
  String links;
  String source;
  List<String> information;

  SimpleTip(
      this.dishImage, 
      this.title, 
      this.harga, 
      this.links, 
      this.source, 
      this.information);

  SimpleTip.fromJson(Map<String, dynamic> json) {
    dishImage = json['dishImage'];
    title = json['title'];
    harga = json['harga'];
    links = json['links'];
    source = json['source'];
    information = json['information'].cast<String>();
  }
}
