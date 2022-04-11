import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/models/users_response/users_response_model.dart';
import 'package:urbetrack/services/users_service.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const _UsersState()) {
    on<_Loading>((event, emit) => _getUsers(emit, event));
  }

  void _getUsers(Emitter<UsersState> emit, _Loading event) async {
    try {
      if(state.status == UsersStatus.loading) {
        final UsersResponseModel users = await UsersService().getUsers();
        return emit(
          state.copyWith(status: UsersStatus.success, users: users.results)
        );
      }
    } catch (e) {
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }
}
