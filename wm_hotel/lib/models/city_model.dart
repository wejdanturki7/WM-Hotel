class City {
  String? id;
  String? name;
  String? imgUrl;

  City({this.id, this.name, this.imgUrl});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['img_url'] = this.imgUrl;
    return data;
  }
}
