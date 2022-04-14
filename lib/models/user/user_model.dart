import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{
  const factory UserModel({
    required String name,
    required String height,
    required String mass,
    required String hair_color,
    required String skin_color,
    required String eye_color,
    required String homeworld,
    required List<String> vehicles,
    required List<String> starships,
    required String gender,
    bool? isReported
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}