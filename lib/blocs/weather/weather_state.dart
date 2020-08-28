import 'package:equatable/equatable.dart';
import 'package:weather_retrofit/src/models/weather.dart';

abstract class WeatherState extends Equatable {

  final List propss;
  WeatherState([this.propss]);

  @override
  List<Object> get props => (propss ?? []);
}

/// UnInitialized
class UnWeatherState extends WeatherState {

  UnWeatherState();

  @override
  String toString() => 'UnWeatherState';
}

/// Initialized
class InWeatherState extends WeatherState {
  final Weather weather;

  InWeatherState(this.weather) : super([weather]);

  @override
  String toString() => 'InWeatherState $weather';

}

class ErrorWeatherState extends WeatherState {
  final String errorMessage;

  ErrorWeatherState(this.errorMessage): super([errorMessage]);
  
  @override
  String toString() => 'ErrorWeatherState';
}
