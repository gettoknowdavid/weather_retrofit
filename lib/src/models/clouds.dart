
import 'package:json_annotation/json_annotation.dart';

part 'clouds.g.dart';

@JsonSerializable(explicitToJson: true)
class Clouds {
  Clouds({
    this.all,
  });

  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) =>
      Clouds(all: json["all"]);

  Map<String, dynamic> toJson() => {"all": all};
}
