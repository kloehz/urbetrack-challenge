// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersResponseModel _$UsersResponseModelFromJson(Map<String, dynamic> json) {
  return _UsersResponseModel.fromJson(json);
}

/// @nodoc
class _$UsersResponseModelTearOff {
  const _$UsersResponseModelTearOff();

  _UsersResponseModel call(
      {required int count,
      String? next,
      String? previous,
      required List<UserModel> results}) {
    return _UsersResponseModel(
      count: count,
      next: next,
      previous: previous,
      results: results,
    );
  }

  UsersResponseModel fromJson(Map<String, Object?> json) {
    return UsersResponseModel.fromJson(json);
  }
}

/// @nodoc
const $UsersResponseModel = _$UsersResponseModelTearOff();

/// @nodoc
mixin _$UsersResponseModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<UserModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResponseModelCopyWith<UsersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseModelCopyWith<$Res> {
  factory $UsersResponseModelCopyWith(
          UsersResponseModel value, $Res Function(UsersResponseModel) then) =
      _$UsersResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int count, String? next, String? previous, List<UserModel> results});
}

/// @nodoc
class _$UsersResponseModelCopyWithImpl<$Res>
    implements $UsersResponseModelCopyWith<$Res> {
  _$UsersResponseModelCopyWithImpl(this._value, this._then);

  final UsersResponseModel _value;
  // ignore: unused_field
  final $Res Function(UsersResponseModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
abstract class _$UsersResponseModelCopyWith<$Res>
    implements $UsersResponseModelCopyWith<$Res> {
  factory _$UsersResponseModelCopyWith(
          _UsersResponseModel value, $Res Function(_UsersResponseModel) then) =
      __$UsersResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count, String? next, String? previous, List<UserModel> results});
}

/// @nodoc
class __$UsersResponseModelCopyWithImpl<$Res>
    extends _$UsersResponseModelCopyWithImpl<$Res>
    implements _$UsersResponseModelCopyWith<$Res> {
  __$UsersResponseModelCopyWithImpl(
      _UsersResponseModel _value, $Res Function(_UsersResponseModel) _then)
      : super(_value, (v) => _then(v as _UsersResponseModel));

  @override
  _UsersResponseModel get _value => super._value as _UsersResponseModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_UsersResponseModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersResponseModel implements _UsersResponseModel {
  const _$_UsersResponseModel(
      {required this.count, this.next, this.previous, required this.results});

  factory _$_UsersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsersResponseModelFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final List<UserModel> results;

  @override
  String toString() {
    return 'UsersResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersResponseModel &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$UsersResponseModelCopyWith<_UsersResponseModel> get copyWith =>
      __$UsersResponseModelCopyWithImpl<_UsersResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersResponseModelToJson(this);
  }
}

abstract class _UsersResponseModel implements UsersResponseModel {
  const factory _UsersResponseModel(
      {required int count,
      String? next,
      String? previous,
      required List<UserModel> results}) = _$_UsersResponseModel;

  factory _UsersResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UsersResponseModel.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<UserModel> get results;
  @override
  @JsonKey(ignore: true)
  _$UsersResponseModelCopyWith<_UsersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
