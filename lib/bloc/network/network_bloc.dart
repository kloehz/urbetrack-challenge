import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_event.dart';
part 'network_state.dart';
part 'network_bloc.freezed.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(const _Offline()) {
    on<_NetworkChanged>((event, emit) => _changeInternetStatus(emit, event));
  }

  void _changeInternetStatus(Emitter<NetworkState> emit, _NetworkChanged event){
    emit(
      state.copyWith(networkStatus: event.networkStatus)
    );
  }
}
