import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.g.dart';
part 'vehicle_model.freezed.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String name
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) => _$VehicleModelFromJson(json);
}