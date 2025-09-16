import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_model.dart';
import 'package:weatherapp/services/weather_service.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  final _weatherService = WeatherService('63280d635d3c197ed71473beed939def');

  WeatherModel? _weather;

  Future<void> _fetchWeather() async {
    try {
      String city = await _weatherService.getCurrentCity();
      WeatherModel weather = await _weatherService.fetchWeather(city);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      // Handle any errors that occur during the fetch
      print('Error fetching weather: $e');
    }
  }
//init state
  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.location ?? 'Loading...'),
            Text('${_weather?.temperature.round().toString() ?? ''}°C', style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}
