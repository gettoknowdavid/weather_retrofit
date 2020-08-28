import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_retrofit/blocs/weather/index.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({
    Key key,
    @required WeatherBloc weatherBloc,
  })  : _weatherBloc = weatherBloc,
        super(key: key);

  final WeatherBloc _weatherBloc;

  @override
  WeatherScreenState createState() {
    return WeatherScreenState();
  }
}

class WeatherScreenState extends State<WeatherScreen> {
  WeatherScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
        cubit: widget._weatherBloc,
        builder: (
          BuildContext context,
          WeatherState currentState,
        ) {
          if (currentState is UnWeatherState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorWeatherState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage ?? 'Error'),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }
           if (currentState is InWeatherState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(currentState.hello),
                ],
              ),
            );
          }
          return Center(
              child: CircularProgressIndicator(),
          );
          
        });
  }

  void _load() {
    widget._weatherBloc.add(LoadWeatherEvent());
  }
}
