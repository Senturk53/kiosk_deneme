part 'cities.g.dart';

class Cities {
  Cities({
    this.name,
    this.cityLat,
    this.cityLong,
  });

  String? name;
  double? cityLat;
  double? cityLong;

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);
  Map<String, dynamic> toJson() => _$CitiesToJson(this);
}
