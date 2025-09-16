
class WeatherModel {
  final String location;
  final double temperature;
  final String description;

  WeatherModel({
    required this.location,
    required this.temperature,
    required this.description,
  });

factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}