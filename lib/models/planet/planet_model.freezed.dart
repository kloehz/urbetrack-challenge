// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanetModel _$PlanetModelFromJson(Map<String, dynamic> json) {
  return _PlanetModel.fromJson(json);
}

/// @nodoc
class _$PlanetModelTearOff {
  const _$PlanetModelTearOff();

  _PlanetModel call({required String name}) {
    return _PlanetModel(
      name: name,
    );
  }

  PlanetModel fromJson(Map<String, Object?> json) {
    return PlanetModel.fromJson(json);
  }
}

/// @nodoc
const $PlanetModel = _$PlanetModelTearOff();

/// @nodoc
mixin _$PlanetModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetModelCopyWith<PlanetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetModelCopyWith<$Res> {
  factory $PlanetModelCopyWith(
          PlanetModel value, $Res Function(PlanetModel) then) =
      _$PlanetModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlanetModelCopyWithImpl<$Res> implements $PlanetModelCopyWith<$Res> {
  _$PlanetModelCopyWithImpl(this._value, this._then);

  final PlanetModel _value;
  // ignore: unused_field
  final $Res Function(PlanetModel) _then;

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
abstract class _$PlanetModelCopyWith<$Res>
    implements $PlanetModelCopyWith<$Res> {
  factory _$PlanetModelCopyWith(
          _PlanetModel value, $Res Function(_PlanetModel) then) =
      __$PlanetModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PlanetModelCopyWithImpl<$Res> extends _$PlanetModelCopyWithImpl<$Res>
    implements _$PlanetModelCopyWith<$Res> {
  __$PlanetModelCopyWithImpl(
      _PlanetModel _value, $Res Function(_PlanetModel) _then)
      : super(_value, (v) => _then(v as _PlanetModel));

  @override
  _PlanetModel get _value => super._value as _PlanetModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PlanetModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanetModel implements _PlanetModel {
  const _$_PlanetModel({required this.name});

  factory _$_PlanetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PlanetModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PlanetModelCopyWith<_PlanetModel> get copyWith =>
      __$PlanetModelCopyWithImpl<_PlanetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetModelToJson(this);
  }
}

abstract class _PlanetModel implements PlanetModel {
  const factory _PlanetModel({required String name}) = _$_PlanetModel;

  factory _PlanetModel.fromJson(Map<String, dynamic> json) =
      _$_PlanetModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PlanetModelCopyWith<_PlanetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
