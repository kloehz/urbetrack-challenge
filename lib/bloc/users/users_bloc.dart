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
    on<_FetchUserDetails>((event, emit) => _getUserDetails(emit, event));
  }

  void _getUsers(Emitter<UsersState> emit, _FetchUsers event) async {
    try {
      if(state.users == null && state.status == UsersStatus.loading) {
        final UsersResponseModel users = await UsersService().getUsers();

        // Parse this for manage it by id and not iterate it everytime
        final Map<String, UserModel> usersParsed = {};
        for(UserModel user in users.results ){
          usersParsed[user.name] = user;
        }

        return emit(
          state.copyWith(status: UsersStatus.success, users: usersParsed)
        );
      }
    } catch (e) {
      // Log
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }

  // GetUser planet, vehicle, starships
  _getUserDetails(Emitter<UsersState> emit, _FetchUserDetails event) async {
    try {
        emit(
          state.copyWith(
            status: UsersStatus.loading
          )
        );
        final usersUpdated = state.users;
        usersUpdated![event.user.name] = event.user;
        emit(
          state.copyWith(
            users: usersUpdated,
            status: UsersStatus.success
          )
        );
    } catch (err) {
      //Log
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }

  @override
  UsersState? fromJson(Map<String, dynamic> json) {
    try {
      final users = Map<String, dynamic>.from(json['users']);
      final Map<String, UserModel> usersList = {};

      for(String key in users.keys){
        usersList[json['users'][key]['name']] = UserModel.fromJson(json['users'][key]);
      }

      return UsersState.initial(users: usersList, status: UsersStatus.success);
    } catch (err) {
      // Log
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(UsersState state) {
    try {
      return {'users': state.users};
    } catch (_) {}
    return null;
  }
}