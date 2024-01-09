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

  String getImgAssetName() => "assets/$id.jpg";

  changeFavorite() => favorite = !favorite;
}