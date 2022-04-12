part of 'network_bloc.dart';

@freezed
class NetworkEvent with _$NetworkEvent {
  const factory NetworkEvent.networkChanged(bool networkStatus) = _NetworkChanged;
}