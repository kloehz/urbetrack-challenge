// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
class _$VehicleModelTearOff {
  const _$VehicleModelTearOff();

  _VehicleModel call({required String name}) {
    return _VehicleModel(
      name: name,
    );
  }

  VehicleModel fromJson(Map<String, Object?> json) {
    return VehicleModel.fromJson(json);
  }
}

/// @nodoc
const $VehicleModel = _$VehicleModelTearOff();

/// @nodoc
mixin _$VehicleModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res> implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  final VehicleModel _value;
  // ignore: unused_field
  final $Res Function(VehicleModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VehicleModelCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$VehicleModelCopyWith(
          _VehicleModel value, $Res Function(_VehicleModel) then) =
      __$VehicleModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$VehicleModelCopyWithImpl<$Res> extends _$VehicleModelCopyWithImpl<$Res>
    implements _$VehicleModelCopyWith<$Res> {
  __$VehicleModelCopyWithImpl(
      _VehicleModel _value, $Res Function(_VehicleModel) _then)
      : super(_value, (v) => _then(v as _VehicleModel));

  @override
  _VehicleModel get _value => super._value as _VehicleModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_VehicleModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel implements _VehicleModel {
  const _$_VehicleModel({required this.name});

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'VehicleModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$VehicleModelCopyWith<_VehicleModel> get copyWith =>
      __$VehicleModelCopyWithImpl<_VehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleModelToJson(this);
  }
}

abstract class _VehicleModel implements VehicleModel {
  const factory _VehicleModel({required String name}) = _$_VehicleModel;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$VehicleModelCopyWith<_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
