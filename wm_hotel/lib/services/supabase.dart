import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/models/city_model.dart';
import 'package:wm_hotel/models/customer_model.dart';
import 'package:wm_hotel/models/hotel_model.dart';

class SupabaseService {
  static final supabase = Supabase.instance.client;

  Future<List<City>?> getCites() async {
    final rawCities = await supabase.from('City').select('id, name,img_url');
    final List<City> cities = [];
    for (final city in rawCities) {
      cities.add(City.fromJson(city));
    }
    return cities;
  }

//
  Future<List<Hotel>?> getHotels() async {
    final rawHotels = await supabase.from('Hotel').select('*, City(*)');
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }

  // Future<Customer> getUserName({required userId}) async {
  //   final rawData =
  //       await supabase.from('customer').select('name').eq('id', userId);

  //   final List<Customer> users = [];
  //   for (final user in rawData) {
  //     users.add(Customer.fromJson(user));
  //   }
  //   if (users.isNotEmpty) {
  //     return users.first;
  //   }

  //   return Customer();
  // }
  // Future<List<Hotel>?> getHotelsByCity() async {
  //   final supabase = Supabase.instance.client;
  //   final rawHotels = await supabase
  //       .from('Hotel')
  //       .select('id, name, description, city_id,img_url, review_id')
  //       .eq(column, value);
  //   final List<Hotel> hotels = [];
  //   for (final hotel in rawHotels) {
  //     hotels.add(Hotel.fromJson(hotel));
  //   }
  //   return hotels;
  // }

  Future<List<Hotel>?> searchHotelsByName(String name) async {
    final rawHotels = await supabase
        .from('Hotel')
        .select('id, name, description, city_id,img_url, review_id')
        .eq('name', name);
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }
}
