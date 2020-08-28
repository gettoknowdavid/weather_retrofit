// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    coord: json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>),
    weather: (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    base: json['base'] as String,
    main: json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>),
    visibility: json['visibility'] as int,
    wind: json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    rain: json['rain'] == null
        ? null
        : Rain.fromJson(json['rain'] as Map<String, dynamic>),
    clouds: json['clouds'] == null
        ? null
        : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
    dt: json['dt'] as int,
    sys: json['sys'] == null
        ? null
        : Sys.fromJson(json['sys'] as Map<String, dynamic>),
    timezone: json['timezone'] as int,
    id: json['id'] as int,
    name: json['name'] as String,
    cod: json['cod'] as int,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'base': instance.base,
      'main': instance.main?.toJson(),
      'visibility': instance.visibility,
      'wind': instance.wind?.toJson(),
      'rain': instance.rain?.toJson(),
      'clouds': instance.clouds?.toJson(),
      'dt': instance.dt,
      'sys': instance.sys?.toJson(),
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
