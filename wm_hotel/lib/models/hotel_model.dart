class Hotel {
  String? id;
  String? reviewIDd;
  String? name;
  String? description;
  String? city;
  String? imgUrl;

  Hotel({this.id, this.name, this.description, this.city, this.imgUrl});

  Hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reviewIDd = json['reviewIDd'];
    name = json['name'];
    description = json['description'];
    city = json['city'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['reviewIDd'] = this.reviewIDd;
    data['name'] = this.name;
    data['description'] = this.description;
    data['city'] = this.city;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}
