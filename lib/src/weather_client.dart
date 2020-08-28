import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_retrofit/src/models/weather.dart';

part 'weather_client.g.dart';

//  final baseUrl =
//         'api.openweathermap.org/data/2.5/weather?lat=4.8156&lon=7.0498&appid=09a6b0dd677ae03d42d30ad60be42a25';

@RestApi(baseUrl: "api.openweathermap.org")
abstract class WeatherClient {
  factory WeatherClient(Dio dio, {String baseUrl}) = _WeatherClient;

  @GET("/data/2.5/weather?")
  Future<Weather> getWeather(@Query("lat") String lat, @Query("lon") String lon, @Query("appid") String appid);
}