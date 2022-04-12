part of 'network_bloc.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.status({
    @Default(false) bool networkStatus
  }) = _Offline;
}