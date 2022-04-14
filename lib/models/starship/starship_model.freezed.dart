// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starship_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StarshipModel _$StarshipModelFromJson(Map<String, dynamic> json) {
  return _StarshipModel.fromJson(json);
}

/// @nodoc
class _$StarshipModelTearOff {
  const _$StarshipModelTearOff();

  _StarshipModel call({required String name}) {
    return _StarshipModel(
      name: name,
    );
  }

  StarshipModel fromJson(Map<String, Object?> json) {
    return StarshipModel.fromJson(json);
  }
}

/// @nodoc
const $StarshipModel = _$StarshipModelTearOff();

/// @nodoc
mixin _$StarshipModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarshipModelCopyWith<StarshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarshipModelCopyWith<$Res> {
  factory $StarshipModelCopyWith(
          StarshipModel value, $Res Function(StarshipModel) then) =
      _$StarshipModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$StarshipModelCopyWithImpl<$Res>
    implements $StarshipModelCopyWith<$Res> {
  _$StarshipModelCopyWithImpl(this._value, this._then);

  final StarshipModel _value;
  // ignore: unused_field
  final $Res Function(StarshipModel) _then;

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
abstract class _$StarshipModelCopyWith<$Res>
    implements $StarshipModelCopyWith<$Res> {
  factory _$StarshipModelCopyWith(
          _StarshipModel value, $Res Function(_StarshipModel) then) =
      __$StarshipModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$StarshipModelCopyWithImpl<$Res>
    extends _$StarshipModelCopyWithImpl<$Res>
    implements _$StarshipModelCopyWith<$Res> {
  __$StarshipModelCopyWithImpl(
      _StarshipModel _value, $Res Function(_StarshipModel) _then)
      : super(_value, (v) => _then(v as _StarshipModel));

  @override
  _StarshipModel get _value => super._value as _StarshipModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_StarshipModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarshipModel implements _StarshipModel {
  const _$_StarshipModel({required this.name});

  factory _$_StarshipModel.fromJson(Map<String, dynamic> json) =>
      _$$_StarshipModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StarshipModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StarshipModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$StarshipModelCopyWith<_StarshipModel> get copyWith =>
      __$StarshipModelCopyWithImpl<_StarshipModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarshipModelToJson(this);
  }
}

abstract class _StarshipModel implements StarshipModel {
  const factory _StarshipModel({required String name}) = _$_StarshipModel;

  factory _StarshipModel.fromJson(Map<String, dynamic> json) =
      _$_StarshipModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$StarshipModelCopyWith<_StarshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}
