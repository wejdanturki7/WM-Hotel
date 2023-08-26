class Hotel {
  String? id;
  String? reviewId;
  String? name;
  String? description;
  String? city;
  String? imgUrl;
  int? price;

  Hotel({this.id, this.name, this.description, this.city, this.imgUrl, this.price});

  Hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reviewId = json['review_id'];
    name = json['name'];
    description = json['description'];
    city = json['city'];
    imgUrl = json['img_url'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['review_id'] = this.reviewId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['city'] = this.city;
    data['img_url'] = this.imgUrl;
    data['price'] = this.price;
    return data;
  }
}
