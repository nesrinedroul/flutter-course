import 'dart:async';
import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weather_model.dart';

class WeatherService {
  static const String baseUrl = 'api.openweathermap.org';
  final String apiKey;

  WeatherService(this.apiKey);

  Future<WeatherModel> fetchWeather(String city) async {
    final uri = Uri.https(baseUrl, '/data/2.5/weather', {
      'q': city,
      'appid': apiKey,
      'units': 'metric', // optional: to get Celsius
    });

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return WeatherModel.fromJson(data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  Future<String> getCurrentCity() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    String city = placemarks.first.locality ?? 'Unknown';
    return city;
  }
}
