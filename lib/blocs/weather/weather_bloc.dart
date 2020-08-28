import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:weather_retrofit/blocs/weather/index.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  WeatherBloc(WeatherState initialState) : super(initialState);

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    try {
      yield* event.applyAsync(currentState: state, bloc: this);
    } catch (_) {
      yield state;
    }
  }
}
