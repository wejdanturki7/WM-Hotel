import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/models/city_model.dart';
import 'package:wm_hotel/models/hotel_model.dart';

class SupabaseService {
  static final client = Supabase.instance.client;

  Future<List<City>?> getCites() async {
    final supabase = Supabase.instance.client;
    final rawCities = await supabase.from('city').select('id, name,img_url');
    final List<City> cities = [];
    for (final city in rawCities) {
      cities.add(City.fromJson(city));
    }
    return cities;
  }

  Future<List<Hotel>?> getHotels() async {
    final supabase = Supabase.instance.client;
    final rawHotels = await supabase
        .from('Hotel')
        .select('id, name, description, city_id,img_url, review_id');
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }
}
