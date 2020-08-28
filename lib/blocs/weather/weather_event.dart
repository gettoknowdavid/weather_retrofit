import 'dart:async';
import 'dart:developer' as developer;

import 'package:weather_retrofit/blocs/weather/index.dart';
import 'package:meta/meta.dart';
import 'package:weather_retrofit/src/base_model.dart';
import 'package:weather_retrofit/src/dao.dart';
import 'package:weather_retrofit/src/models/weather.dart';
import 'package:weather_retrofit/src/server_error.dart';

Dao dao = Dao();

@immutable
abstract class WeatherEvent {
  Stream<WeatherState> applyAsync(
      {WeatherState currentState, WeatherBloc bloc});
}

class UnWeatherEvent extends WeatherEvent {
  @override
  Stream<WeatherState> applyAsync(
      {WeatherState currentState, WeatherBloc bloc}) async* {
    yield UnWeatherState();
  }
}

class LoadWeatherEvent extends WeatherEvent {
  @override
  Stream<WeatherState> applyAsync(
      {WeatherState currentState, WeatherBloc bloc}) async* {
    try {
      yield UnWeatherState();
      await Future.delayed(Duration(seconds: 1));

      BaseModel<Weather> baseModel = await dao.getWeather();
      yield InWeatherState(baseModel.data);
    } catch (_) {
      BaseModel<Weather> baseModel = await dao.getWeather();
      ServerError error = baseModel.getException;
      yield ErrorWeatherState(error.getErrorMessage());
    }
  }
}
