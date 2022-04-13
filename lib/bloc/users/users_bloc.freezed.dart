// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersEventTearOff {
  const _$UsersEventTearOff();

  _FetchUsers fetchUsers() {
    return const _FetchUsers();
  }

  _FetchUserDetails fetchUserDetails() {
    return const _FetchUserDetails();
  }
}

/// @nodoc
const $UsersEvent = _$UsersEventTearOff();

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function() fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class _$FetchUsersCopyWith<$Res> {
  factory _$FetchUsersCopyWith(
          _FetchUsers value, $Res Function(_FetchUsers) then) =
      __$FetchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchUsersCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements _$FetchUsersCopyWith<$Res> {
  __$FetchUsersCopyWithImpl(
      _FetchUsers _value, $Res Function(_FetchUsers) _then)
      : super(_value, (v) => _then(v as _FetchUsers));

  @override
  _FetchUsers get _value => super._value as _FetchUsers;
}

/// @nodoc

class _$_FetchUsers implements _FetchUsers {
  const _$_FetchUsers();

  @override
  String toString() {
    return 'UsersEvent.fetchUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function() fetchUserDetails,
  }) {
    return fetchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
  }) {
    return fetchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements UsersEvent {
  const factory _FetchUsers() = _$_FetchUsers;
}

/// @nodoc
abstract class _$FetchUserDetailsCopyWith<$Res> {
  factory _$FetchUserDetailsCopyWith(
          _FetchUserDetails value, $Res Function(_FetchUserDetails) then) =
      __$FetchUserDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchUserDetailsCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$FetchUserDetailsCopyWith<$Res> {
  __$FetchUserDetailsCopyWithImpl(
      _FetchUserDetails _value, $Res Function(_FetchUserDetails) _then)
      : super(_value, (v) => _then(v as _FetchUserDetails));

  @override
  _FetchUserDetails get _value => super._value as _FetchUserDetails;
}

/// @nodoc

class _$_FetchUserDetails implements _FetchUserDetails {
  const _$_FetchUserDetails();

  @override
  String toString() {
    return 'UsersEvent.fetchUserDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchUserDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function() fetchUserDetails,
  }) {
    return fetchUserDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
  }) {
    return fetchUserDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetails implements UsersEvent {
  const factory _FetchUserDetails() = _$_FetchUserDetails;
}

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

  _UsersState initial(
      {UsersStatus status = UsersStatus.loading, List<UserModel>? users}) {
    return _UsersState(
      status: status,
      users: users,
    );
  }
}

/// @nodoc
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  UsersStatus get status => throw _privateConstructorUsedError;
  List<UserModel>? get users => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersStatus status, List<UserModel>? users)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UsersStatus status, List<UserModel>? users)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersStatus status, List<UserModel>? users)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call({UsersStatus status, List<UserModel>? users});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersStatus,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call({UsersStatus status, List<UserModel>? users});
}

/// @nodoc
class __$UsersStateCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateCopyWith<$Res> {
  __$UsersStateCopyWithImpl(
      _UsersState _value, $Res Function(_UsersState) _then)
      : super(_value, (v) => _then(v as _UsersState));

  @override
  _UsersState get _value => super._value as _UsersState;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_UsersState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersStatus,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState({this.status = UsersStatus.loading, this.users});

  @JsonKey()
  @override
  final UsersStatus status;
  @override
  final List<UserModel>? users;

  @override
  String toString() {
    return 'UsersState.initial(status: $status, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersStatus status, List<UserModel>? users)
        initial,
  }) {
    return initial(status, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UsersStatus status, List<UserModel>? users)? initial,
  }) {
    return initial?.call(status, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersStatus status, List<UserModel>? users)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UsersState implements UsersState {
  const factory _UsersState({UsersStatus status, List<UserModel>? users}) =
      _$_UsersState;

  @override
  UsersStatus get status;
  @override
  List<UserModel>? get users;
  @override
  @JsonKey(ignore: true)
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
