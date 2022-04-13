import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/models/users_response/users_response_model.dart';
import 'package:urbetrack/services/users_service.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends HydratedBloc<UsersEvent, UsersState> {
  UsersBloc() : super(const _UsersState()) {
    on<_FetchUsers>((event, emit) => _getUsers(emit, event));
    on<_FetchUserDetails>((event, emit) => _getUserDetails());
  }

  void _getUsers(Emitter<UsersState> emit, _FetchUsers event) async {
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

  @override
  UsersState? fromJson(Map<String, dynamic> json) {
    try {
      final List<UserModel> usersList = [];
      json['users'].map((user) => usersList.add(UserModel.fromJson(user))).toList();

      return UsersState.initial(users: usersList, status: UsersStatus.success);
    } catch (err) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(UsersState state) {
    return {'users': state.users};
  }

  _getUserDetails() {}
}
