class Brick {
  int? id;
  String? name;
  String? category;
  bool favorite = false;

  Brick({this.id, this.name, this.category});

  Brick.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
  }

  String getImgUrl() => "https://www.lego.com/cdn/product-assets/element.img.lod5photo.192x192/$id.jpg";

  changeFavorite() => favorite = !favorite;
}