import 'package:json_annotation/json_annotation.dart';

part 'rain.g.dart';

@JsonSerializable(explicitToJson: true)
class Rain {
  Rain({
    this.the1H,
  });

  double the1H;

  factory Rain.fromJson(Map<String, dynamic> json) =>
      Rain(the1H: json["1h"].toDouble());

  Map<String, dynamic> toJson() => {"1h": the1H};
}
