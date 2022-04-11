// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailsEventTearOff {
  const _$UserDetailsEventTearOff();

  _Loading started(UserModel user) {
    return _Loading(
      user,
    );
  }
}

/// @nodoc
const $UserDetailsEvent = _$UserDetailsEventTearOff();

/// @nodoc
mixin _$UserDetailsEvent {
  UserModel get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsEventCopyWith<UserDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  final UserDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailsEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Loading(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserDetailsEvent.started(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) started,
  }) {
    return started(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user)? started,
  }) {
    return started?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserDetailsEvent {
  const factory _Loading(UserModel user) = _$_Loading;

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserDetailsStateTearOff {
  const _$UserDetailsStateTearOff();

  _UserDetailsState initial(
      {UserDetailsStatus status = UserDetailsStatus.success,
      PlanetModel? planet,
      List<VehicleModel?>? vehicles}) {
    return _UserDetailsState(
      status: status,
      planet: planet,
      vehicles: vehicles,
    );
  }
}

/// @nodoc
const $UserDetailsState = _$UserDetailsStateTearOff();

/// @nodoc
mixin _$UserDetailsState {
  UserDetailsStatus get status => throw _privateConstructorUsedError;
  PlanetModel? get planet => throw _privateConstructorUsedError;
  List<VehicleModel?>? get vehicles => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetailsState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailsState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailsState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsStatus status,
      PlanetModel? planet,
      List<VehicleModel?>? vehicles});

  $PlanetModelCopyWith<$Res>? get planet;
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  final UserDetailsState _value;
  // ignore: unused_field
  final $Res Function(UserDetailsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? planet = freezed,
    Object? vehicles = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserDetailsStatus,
      planet: planet == freezed
          ? _value.planet
          : planet // ignore: cast_nullable_to_non_nullable
              as PlanetModel?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel?>?,
    ));
  }

  @override
  $PlanetModelCopyWith<$Res>? get planet {
    if (_value.planet == null) {
      return null;
    }

    return $PlanetModelCopyWith<$Res>(_value.planet!, (value) {
      return _then(_value.copyWith(planet: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailsStateCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$UserDetailsStateCopyWith(
          _UserDetailsState value, $Res Function(_UserDetailsState) then) =
      __$UserDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsStatus status,
      PlanetModel? planet,
      List<VehicleModel?>? vehicles});

  @override
  $PlanetModelCopyWith<$Res>? get planet;
}

/// @nodoc
class __$UserDetailsStateCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res>
    implements _$UserDetailsStateCopyWith<$Res> {
  __$UserDetailsStateCopyWithImpl(
      _UserDetailsState _value, $Res Function(_UserDetailsState) _then)
      : super(_value, (v) => _then(v as _UserDetailsState));

  @override
  _UserDetailsState get _value => super._value as _UserDetailsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? planet = freezed,
    Object? vehicles = freezed,
  }) {
    return _then(_UserDetailsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserDetailsStatus,
      planet: planet == freezed
          ? _value.planet
          : planet // ignore: cast_nullable_to_non_nullable
              as PlanetModel?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel?>?,
    ));
  }
}

/// @nodoc

class _$_UserDetailsState implements _UserDetailsState {
  const _$_UserDetailsState(
      {this.status = UserDetailsStatus.success, this.planet, this.vehicles});

  @JsonKey()
  @override
  final UserDetailsStatus status;
  @override
  final PlanetModel? planet;
  @override
  final List<VehicleModel?>? vehicles;

  @override
  String toString() {
    return 'UserDetailsState.initial(status: $status, planet: $planet, vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.planet, planet) &&
            const DeepCollectionEquality().equals(other.vehicles, vehicles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(planet),
      const DeepCollectionEquality().hash(vehicles));

  @JsonKey(ignore: true)
  @override
  _$UserDetailsStateCopyWith<_UserDetailsState> get copyWith =>
      __$UserDetailsStateCopyWithImpl<_UserDetailsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)
        initial,
  }) {
    return initial(status, planet, vehicles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)?
        initial,
  }) {
    return initial?.call(status, planet, vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, PlanetModel? planet,
            List<VehicleModel?>? vehicles)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, planet, vehicles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetailsState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailsState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailsState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
      {UserDetailsStatus status,
      PlanetModel? planet,
      List<VehicleModel?>? vehicles}) = _$_UserDetailsState;

  @override
  UserDetailsStatus get status;
  @override
  PlanetModel? get planet;
  @override
  List<VehicleModel?>? get vehicles;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsStateCopyWith<_UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
