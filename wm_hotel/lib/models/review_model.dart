class Review {
  String? id;
  String? content;
  int? rate;
  String? customerId;
  String? hotelId;

  Review({this.id, this.content, this.rate, this.customerId, this.hotelId});

  Review.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    rate = json['rate'];
    customerId = json['customerId'];
    hotelId = json['hotelId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['rate'] = this.rate;
    data['customerId'] = this.customerId;
    data['hotelId'] = this.hotelId;
    return data;
  }
}
