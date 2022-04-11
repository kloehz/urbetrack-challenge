import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet_model.freezed.dart';
part 'planet_model.g.dart';

@freezed
class PlanetModel with _$PlanetModel{
  const factory PlanetModel({
    required String name,
  }) = _PlanetModel;

  factory PlanetModel.fromJson(Map<String, dynamic> json) => _$PlanetModelFromJson(json);
}