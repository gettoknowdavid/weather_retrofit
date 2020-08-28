import 'package:flutter/material.dart';
import 'package:weather_retrofit/blocs/weather/index.dart';

class WeatherPage extends StatefulWidget {
  static const String routeName = '/weather';

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherBloc = WeatherBloc(UnWeatherState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: WeatherScreen(weatherBloc: _weatherBloc),
    );
  }
}
