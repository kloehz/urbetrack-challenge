// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      hair_color: json['hair_color'] as String,
      skin_color: json['skin_color'] as String,
      eye_color: json['eye_color'] as String,
      homeworld: json['homeworld'] as String,
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      starships:
          (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hair_color,
      'skin_color': instance.skin_color,
      'eye_color': instance.eye_color,
      'homeworld': instance.homeworld,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'gender': instance.gender,
    };
