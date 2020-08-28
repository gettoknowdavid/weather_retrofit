import 'package:dio/dio.dart';
import 'package:weather_retrofit/src/base_model.dart';
import 'package:weather_retrofit/src/weather_client.dart';

class Dao {
  Dio dio;
  WeatherClient client;

  Dao() {
    dio = Dio();
    client = WeatherClient(dio);
  }

  Future<BaseModel<Weather>> getWeather() async {}
}
