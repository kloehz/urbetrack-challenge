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

  _FetchUsers fetchUsers({bool? isRefresh}) {
    return _FetchUsers(
      isRefresh: isRefresh,
    );
  }

  _FetchUserDetails fetchUserDetails({required UserModel user}) {
    return _FetchUserDetails(
      user: user,
    );
  }

  _ReportUser reportUser({required UserModel user}) {
    return _ReportUser(
      user: user,
    );
  }
}

/// @nodoc
const $UsersEvent = _$UsersEventTearOff();

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) fetchUsers,
    required TResult Function(UserModel user) fetchUserDetails,
    required TResult Function(UserModel user) reportUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
    required TResult Function(_ReportUser value) reportUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
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
  $Res call({bool? isRefresh});
}

/// @nodoc
class __$FetchUsersCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements _$FetchUsersCopyWith<$Res> {
  __$FetchUsersCopyWithImpl(
      _FetchUsers _value, $Res Function(_FetchUsers) _then)
      : super(_value, (v) => _then(v as _FetchUsers));

  @override
  _FetchUsers get _value => super._value as _FetchUsers;

  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_FetchUsers(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchUsers implements _FetchUsers {
  const _$_FetchUsers({this.isRefresh});

  @override
  final bool? isRefresh;

  @override
  String toString() {
    return 'UsersEvent.fetchUsers(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchUsers &&
            const DeepCollectionEquality().equals(other.isRefresh, isRefresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isRefresh));

  @JsonKey(ignore: true)
  @override
  _$FetchUsersCopyWith<_FetchUsers> get copyWith =>
      __$FetchUsersCopyWithImpl<_FetchUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) fetchUsers,
    required TResult Function(UserModel user) fetchUserDetails,
    required TResult Function(UserModel user) reportUser,
  }) {
    return fetchUsers(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
  }) {
    return fetchUsers?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
    required TResult Function(_ReportUser value) reportUser,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements UsersEvent {
  const factory _FetchUsers({bool? isRefresh}) = _$_FetchUsers;

  bool? get isRefresh;
  @JsonKey(ignore: true)
  _$FetchUsersCopyWith<_FetchUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchUserDetailsCopyWith<$Res> {
  factory _$FetchUserDetailsCopyWith(
          _FetchUserDetails value, $Res Function(_FetchUserDetails) then) =
      __$FetchUserDetailsCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
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

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_FetchUserDetails(
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

class _$_FetchUserDetails implements _FetchUserDetails {
  const _$_FetchUserDetails({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UsersEvent.fetchUserDetails(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchUserDetails &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$FetchUserDetailsCopyWith<_FetchUserDetails> get copyWith =>
      __$FetchUserDetailsCopyWithImpl<_FetchUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) fetchUsers,
    required TResult Function(UserModel user) fetchUserDetails,
    required TResult Function(UserModel user) reportUser,
  }) {
    return fetchUserDetails(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
  }) {
    return fetchUserDetails?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
    required TResult Function(_ReportUser value) reportUser,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetails implements UsersEvent {
  const factory _FetchUserDetails({required UserModel user}) =
      _$_FetchUserDetails;

  UserModel get user;
  @JsonKey(ignore: true)
  _$FetchUserDetailsCopyWith<_FetchUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReportUserCopyWith<$Res> {
  factory _$ReportUserCopyWith(
          _ReportUser value, $Res Function(_ReportUser) then) =
      __$ReportUserCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$ReportUserCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements _$ReportUserCopyWith<$Res> {
  __$ReportUserCopyWithImpl(
      _ReportUser _value, $Res Function(_ReportUser) _then)
      : super(_value, (v) => _then(v as _ReportUser));

  @override
  _ReportUser get _value => super._value as _ReportUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_ReportUser(
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

class _$_ReportUser implements _ReportUser {
  const _$_ReportUser({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UsersEvent.reportUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportUser &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ReportUserCopyWith<_ReportUser> get copyWith =>
      __$ReportUserCopyWithImpl<_ReportUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) fetchUsers,
    required TResult Function(UserModel user) fetchUserDetails,
    required TResult Function(UserModel user) reportUser,
  }) {
    return reportUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
  }) {
    return reportUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? fetchUsers,
    TResult Function(UserModel user)? fetchUserDetails,
    TResult Function(UserModel user)? reportUser,
    required TResult orElse(),
  }) {
    if (reportUser != null) {
      return reportUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
    required TResult Function(_ReportUser value) reportUser,
  }) {
    return reportUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
  }) {
    return reportUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    TResult Function(_ReportUser value)? reportUser,
    required TResult orElse(),
  }) {
    if (reportUser != null) {
      return reportUser(this);
    }
    return orElse();
  }
}

abstract class _ReportUser implements UsersEvent {
  const factory _ReportUser({required UserModel user}) = _$_ReportUser;

  UserModel get user;
  @JsonKey(ignore: true)
  _$ReportUserCopyWith<_ReportUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

  _UsersState initial(
      {UsersStatus status = UsersStatus.loading,
      Map<String, UserModel>? users}) {
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
  Map<String, UserModel>? get users => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersStatus status, Map<String, UserModel>? users)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UsersStatus status, Map<String, UserModel>? users)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersStatus status, Map<String, UserModel>? users)?
        initial,
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
  $Res call({UsersStatus status, Map<String, UserModel>? users});
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
              as Map<String, UserModel>?,
    ));
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call({UsersStatus status, Map<String, UserModel>? users});
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
              as Map<String, UserModel>?,
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
  final Map<String, UserModel>? users;

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
    required TResult Function(UsersStatus status, Map<String, UserModel>? users)
        initial,
  }) {
    return initial(status, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UsersStatus status, Map<String, UserModel>? users)?
        initial,
  }) {
    return initial?.call(status, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersStatus status, Map<String, UserModel>? users)?
        initial,
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
  const factory _UsersState(
      {UsersStatus status, Map<String, UserModel>? users}) = _$_UsersState;

  @override
  UsersStatus get status;
  @override
  Map<String, UserModel>? get users;
  @override
  @JsonKey(ignore: true)
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
