// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkEventTearOff {
  const _$NetworkEventTearOff();

  _NetworkChanged networkChanged(bool networkStatus) {
    return _NetworkChanged(
      networkStatus,
    );
  }
}

/// @nodoc
const $NetworkEvent = _$NetworkEventTearOff();

/// @nodoc
mixin _$NetworkEvent {
  bool get networkStatus => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool networkStatus) networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool networkStatus)? networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool networkStatus)? networkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkChanged value) networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkChanged value)? networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkChanged value)? networkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkEventCopyWith<NetworkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res>;
  $Res call({bool networkStatus});
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res> implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  final NetworkEvent _value;
  // ignore: unused_field
  final $Res Function(NetworkEvent) _then;

  @override
  $Res call({
    Object? networkStatus = freezed,
  }) {
    return _then(_value.copyWith(
      networkStatus: networkStatus == freezed
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NetworkChangedCopyWith<$Res>
    implements $NetworkEventCopyWith<$Res> {
  factory _$NetworkChangedCopyWith(
          _NetworkChanged value, $Res Function(_NetworkChanged) then) =
      __$NetworkChangedCopyWithImpl<$Res>;
  @override
  $Res call({bool networkStatus});
}

/// @nodoc
class __$NetworkChangedCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$NetworkChangedCopyWith<$Res> {
  __$NetworkChangedCopyWithImpl(
      _NetworkChanged _value, $Res Function(_NetworkChanged) _then)
      : super(_value, (v) => _then(v as _NetworkChanged));

  @override
  _NetworkChanged get _value => super._value as _NetworkChanged;

  @override
  $Res call({
    Object? networkStatus = freezed,
  }) {
    return _then(_NetworkChanged(
      networkStatus == freezed
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkChanged implements _NetworkChanged {
  const _$_NetworkChanged(this.networkStatus);

  @override
  final bool networkStatus;

  @override
  String toString() {
    return 'NetworkEvent.networkChanged(networkStatus: $networkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkChanged &&
            const DeepCollectionEquality()
                .equals(other.networkStatus, networkStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(networkStatus));

  @JsonKey(ignore: true)
  @override
  _$NetworkChangedCopyWith<_NetworkChanged> get copyWith =>
      __$NetworkChangedCopyWithImpl<_NetworkChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool networkStatus) networkChanged,
  }) {
    return networkChanged(networkStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool networkStatus)? networkChanged,
  }) {
    return networkChanged?.call(networkStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool networkStatus)? networkChanged,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(networkStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkChanged value) networkChanged,
  }) {
    return networkChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkChanged value)? networkChanged,
  }) {
    return networkChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkChanged value)? networkChanged,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(this);
    }
    return orElse();
  }
}

abstract class _NetworkChanged implements NetworkEvent {
  const factory _NetworkChanged(bool networkStatus) = _$_NetworkChanged;

  @override
  bool get networkStatus;
  @override
  @JsonKey(ignore: true)
  _$NetworkChangedCopyWith<_NetworkChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

  _Offline status({bool networkStatus = false}) {
    return _Offline(
      networkStatus: networkStatus,
    );
  }
}

/// @nodoc
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState {
  bool get networkStatus => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool networkStatus) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool networkStatus)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool networkStatus)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Offline value)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
  $Res call({bool networkStatus});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;

  @override
  $Res call({
    Object? networkStatus = freezed,
  }) {
    return _then(_value.copyWith(
      networkStatus: networkStatus == freezed
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$OfflineCopyWith<$Res> implements $NetworkStateCopyWith<$Res> {
  factory _$OfflineCopyWith(_Offline value, $Res Function(_Offline) then) =
      __$OfflineCopyWithImpl<$Res>;
  @override
  $Res call({bool networkStatus});
}

/// @nodoc
class __$OfflineCopyWithImpl<$Res> extends _$NetworkStateCopyWithImpl<$Res>
    implements _$OfflineCopyWith<$Res> {
  __$OfflineCopyWithImpl(_Offline _value, $Res Function(_Offline) _then)
      : super(_value, (v) => _then(v as _Offline));

  @override
  _Offline get _value => super._value as _Offline;

  @override
  $Res call({
    Object? networkStatus = freezed,
  }) {
    return _then(_Offline(
      networkStatus: networkStatus == freezed
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Offline implements _Offline {
  const _$_Offline({this.networkStatus = false});

  @JsonKey()
  @override
  final bool networkStatus;

  @override
  String toString() {
    return 'NetworkState.status(networkStatus: $networkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Offline &&
            const DeepCollectionEquality()
                .equals(other.networkStatus, networkStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(networkStatus));

  @JsonKey(ignore: true)
  @override
  _$OfflineCopyWith<_Offline> get copyWith =>
      __$OfflineCopyWithImpl<_Offline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool networkStatus) status,
  }) {
    return status(networkStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool networkStatus)? status,
  }) {
    return status?.call(networkStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool networkStatus)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(networkStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) status,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Offline value)? status,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class _Offline implements NetworkState {
  const factory _Offline({bool networkStatus}) = _$_Offline;

  @override
  bool get networkStatus;
  @override
  @JsonKey(ignore: true)
  _$OfflineCopyWith<_Offline> get copyWith =>
      throw _privateConstructorUsedError;
}
