import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'network_event.dart';
part 'network_state.dart';
part 'network_bloc.freezed.dart';

class NetworkBloc extends HydratedBloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(const _Offline()) {
    on<_NetworkChanged>((event, emit) => _changeInternetStatus(emit, event));
  }

  void _changeInternetStatus(Emitter<NetworkState> emit, _NetworkChanged event){
    emit(
      state.copyWith(networkStatus: event.networkStatus)
    );
  }

  @override
  NetworkState? fromJson(Map<String, dynamic> json) {
    try{
      return NetworkState.status(networkStatus: json['network'] as bool);
    }catch(_){
      //Log
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(NetworkState state) {
    return {'network': state.networkStatus};
  }
}
