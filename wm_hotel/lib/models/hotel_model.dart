class Hotel {
  String? id;
  String? reviewId;
  String? name;
  String? description;
  String? cityId;
  String? imgUrl;
  int? price;
  String? city;

  Hotel({
    this.id,
    this.name,
    this.description,
    this.city,
    this.imgUrl,
    this.price,
  });

  Hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reviewId = json['review_id'];
    name = json['name'];
    description = json['description'];
    cityId = json['city_id'];
    imgUrl = json['img_url'];
    city = json['city'];

    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['review_id'] = this.reviewId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['city_id'] = this.cityId;
    data['img_url'] = this.imgUrl;
    data['city'] = this.city;
    data['price'] = this.price;

    return data;
  }
}
