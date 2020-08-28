import 'dart:math';

import 'package:dio/dio.dart';
import 'package:weather_retrofit/src/base_model.dart';
import 'package:weather_retrofit/src/models/weather.dart';
import 'package:weather_retrofit/src/server_error.dart';
import 'package:weather_retrofit/src/weather_client.dart';

class Dao {
  Dio dio;
  WeatherClient client;

  Dao() {
    dio = Dio();
    client = WeatherClient(dio);
  }

  Future<BaseModel<Weather>> getWeather() async {
    Weather response;

    final lat = '4.8156';
    final lon = '7.0498';
    final appid = '09a6b0dd677ae03d42d30ad60be42a25';

    try {
      response = await client.getWeather(lat, lon, appid);
    } catch (error, stacktrace) {
      print("Exception occured: $error stacktrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    return BaseModel()..data = response;
  }
}
