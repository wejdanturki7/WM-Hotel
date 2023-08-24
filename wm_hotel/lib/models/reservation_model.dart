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
    startDate = json['start_date'];
    endDate = json['end_date'];
    numRooms = json['number_of_room'];
    hotelId = json['hotel_id'];
    customerId = json['customer_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['number_of_room'] = this.numRooms;
    data['hotel_id'] = this.hotelId;
    data['customer_id'] = this.customerId;
    return data;
  }
}
