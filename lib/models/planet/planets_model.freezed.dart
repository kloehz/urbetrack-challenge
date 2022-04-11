// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanetsModel _$PlanetsModelFromJson(Map<String, dynamic> json) {
  return _PlanetsModel.fromJson(json);
}

/// @nodoc
class _$PlanetsModelTearOff {
  const _$PlanetsModelTearOff();

  _PlanetsModel call({required String name}) {
    return _PlanetsModel(
      name: name,
    );
  }

  PlanetsModel fromJson(Map<String, Object?> json) {
    return PlanetsModel.fromJson(json);
  }
}

/// @nodoc
const $PlanetsModel = _$PlanetsModelTearOff();

/// @nodoc
mixin _$PlanetsModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetsModelCopyWith<PlanetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetsModelCopyWith<$Res> {
  factory $PlanetsModelCopyWith(
          PlanetsModel value, $Res Function(PlanetsModel) then) =
      _$PlanetsModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlanetsModelCopyWithImpl<$Res> implements $PlanetsModelCopyWith<$Res> {
  _$PlanetsModelCopyWithImpl(this._value, this._then);

  final PlanetsModel _value;
  // ignore: unused_field
  final $Res Function(PlanetsModel) _then;

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
abstract class _$PlanetsModelCopyWith<$Res>
    implements $PlanetsModelCopyWith<$Res> {
  factory _$PlanetsModelCopyWith(
          _PlanetsModel value, $Res Function(_PlanetsModel) then) =
      __$PlanetsModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PlanetsModelCopyWithImpl<$Res> extends _$PlanetsModelCopyWithImpl<$Res>
    implements _$PlanetsModelCopyWith<$Res> {
  __$PlanetsModelCopyWithImpl(
      _PlanetsModel _value, $Res Function(_PlanetsModel) _then)
      : super(_value, (v) => _then(v as _PlanetsModel));

  @override
  _PlanetsModel get _value => super._value as _PlanetsModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PlanetsModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanetsModel implements _PlanetsModel {
  const _$_PlanetsModel({required this.name});

  factory _$_PlanetsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetsModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PlanetsModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetsModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PlanetsModelCopyWith<_PlanetsModel> get copyWith =>
      __$PlanetsModelCopyWithImpl<_PlanetsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetsModelToJson(this);
  }
}

abstract class _PlanetsModel implements PlanetsModel {
  const factory _PlanetsModel({required String name}) = _$_PlanetsModel;

  factory _PlanetsModel.fromJson(Map<String, dynamic> json) =
      _$_PlanetsModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PlanetsModelCopyWith<_PlanetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
