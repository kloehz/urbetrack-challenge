import 'package:freezed_annotation/freezed_annotation.dart';

part 'starship_model.freezed.dart';
part 'starship_model.g.dart';

@freezed
class StarshipModel with _$StarshipModel{
  const factory StarshipModel({
    required String name
  }) = _StarshipModel;

  factory StarshipModel.fromJson(Map<String, dynamic> json) => _$StarshipModelFromJson(json);
}