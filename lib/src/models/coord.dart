
import 'package:json_annotation/json_annotation.dart';

part 'coord.g.dart';

@JsonSerializable(explicitToJson: true)
class Coord {
    Coord({
        this.lon,
        this.lat,
    });

    double lon;
    double lat;

    factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json["lon"].toDouble(),
        lat: json["lat"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
    };
}