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

  _FetchUserDetails fetchUserDetails(
      {required UserModel user, required UsersBloc userbloc}) {
    return _FetchUserDetails(
      user: user,
      userbloc: userbloc,
    );
  }
}

/// @nodoc
const $UserDetailsEvent = _$UserDetailsEventTearOff();

/// @nodoc
mixin _$UserDetailsEvent {
  UserModel get user => throw _privateConstructorUsedError;
  UsersBloc get userbloc => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user, UsersBloc userbloc)
        fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user, UsersBloc userbloc)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user, UsersBloc userbloc)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
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
  $Res call({UserModel user, UsersBloc userbloc});

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
    Object? userbloc = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userbloc: userbloc == freezed
          ? _value.userbloc
          : userbloc // ignore: cast_nullable_to_non_nullable
              as UsersBloc,
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
abstract class _$FetchUserDetailsCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$FetchUserDetailsCopyWith(
          _FetchUserDetails value, $Res Function(_FetchUserDetails) then) =
      __$FetchUserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user, UsersBloc userbloc});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$FetchUserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$FetchUserDetailsCopyWith<$Res> {
  __$FetchUserDetailsCopyWithImpl(
      _FetchUserDetails _value, $Res Function(_FetchUserDetails) _then)
      : super(_value, (v) => _then(v as _FetchUserDetails));

  @override
  _FetchUserDetails get _value => super._value as _FetchUserDetails;

  @override
  $Res call({
    Object? user = freezed,
    Object? userbloc = freezed,
  }) {
    return _then(_FetchUserDetails(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userbloc: userbloc == freezed
          ? _value.userbloc
          : userbloc // ignore: cast_nullable_to_non_nullable
              as UsersBloc,
    ));
  }
}

/// @nodoc

class _$_FetchUserDetails implements _FetchUserDetails {
  const _$_FetchUserDetails({required this.user, required this.userbloc});

  @override
  final UserModel user;
  @override
  final UsersBloc userbloc;

  @override
  String toString() {
    return 'UserDetailsEvent.fetchUserDetails(user: $user, userbloc: $userbloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchUserDetails &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.userbloc, userbloc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(userbloc));

  @JsonKey(ignore: true)
  @override
  _$FetchUserDetailsCopyWith<_FetchUserDetails> get copyWith =>
      __$FetchUserDetailsCopyWithImpl<_FetchUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user, UsersBloc userbloc)
        fetchUserDetails,
  }) {
    return fetchUserDetails(user, userbloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel user, UsersBloc userbloc)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(user, userbloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user, UsersBloc userbloc)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(user, userbloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetails implements UserDetailsEvent {
  const factory _FetchUserDetails(
      {required UserModel user,
      required UsersBloc userbloc}) = _$_FetchUserDetails;

  @override
  UserModel get user;
  @override
  UsersBloc get userbloc;
  @override
  @JsonKey(ignore: true)
  _$FetchUserDetailsCopyWith<_FetchUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserDetailsStateTearOff {
  const _$UserDetailsStateTearOff();

  _UserDetails initial(
      {UserDetailsStatus status = UserDetailsStatus.loading, UserModel? user}) {
    return _UserDetails(
      status: status,
      user: user,
    );
  }
}

/// @nodoc
const $UserDetailsState = _$UserDetailsStateTearOff();

/// @nodoc
mixin _$UserDetailsState {
  UserDetailsStatus get status => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetailsStatus status, UserModel? user)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, UserModel? user)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, UserModel? user)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetails value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetails value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetails value)? initial,
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
  $Res call({UserDetailsStatus status, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserDetailsStatus,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailsCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$UserDetailsCopyWith(
          _UserDetails value, $Res Function(_UserDetails) then) =
      __$UserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({UserDetailsStatus status, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res>
    implements _$UserDetailsCopyWith<$Res> {
  __$UserDetailsCopyWithImpl(
      _UserDetails _value, $Res Function(_UserDetails) _then)
      : super(_value, (v) => _then(v as _UserDetails));

  @override
  _UserDetails get _value => super._value as _UserDetails;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_UserDetails(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserDetailsStatus,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_UserDetails implements _UserDetails {
  const _$_UserDetails({this.status = UserDetailsStatus.loading, this.user});

  @JsonKey()
  @override
  final UserDetailsStatus status;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'UserDetailsState.initial(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetails &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      __$UserDetailsCopyWithImpl<_UserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetailsStatus status, UserModel? user)
        initial,
  }) {
    return initial(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, UserModel? user)? initial,
  }) {
    return initial?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetailsStatus status, UserModel? user)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetails value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetails value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetails value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserDetails implements UserDetailsState {
  const factory _UserDetails({UserDetailsStatus status, UserModel? user}) =
      _$_UserDetails;

  @override
  UserDetailsStatus get status;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
