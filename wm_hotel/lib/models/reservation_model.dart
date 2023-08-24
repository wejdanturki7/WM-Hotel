class Reservation {
  String? startDate;
  String? endDate;
  String? numRooms;
  String? hotelId;
  String? customerId;

  Reservation(
      {this.startDate,
      this.endDate,
      this.numRooms,
      this.hotelId,
      this.customerId});

  Reservation.fromJson(Map<String, dynamic> json) {
    startDate = json['startDate'];
    endDate = json['endDate'];
    numRooms = json['numRooms'];
    hotelId = json['hotelId'];
    customerId = json['customerId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['numRooms'] = this.numRooms;
    data['hotelId'] = this.hotelId;
    data['customerId'] = this.customerId;
    return data;
  }
}
