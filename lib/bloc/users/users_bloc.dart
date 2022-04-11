import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/models/users_response/users_response_model.dart';
import 'package:urbetrack/services/users_service.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersState()) {
    on<GetUsers>((event, emit) => _getUsers(emit, event));
    on<GetUsersPage>((event, emit) => _getUsersPage(emit, event));
  }


  void _getUsers(Emitter<UsersState> emit, GetUsers event) async {
    try {
      if(state.status == UsersStatus.loading) {
        final UsersResponseModel users = await UsersService().getUsers();
        return emit(
          state.copyWith(status: UsersStatus.success, users: users.results, nextPage: users.next)
        );
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }

  void _getUsersPage(Emitter<UsersState> emit, GetUsersPage event) async {
    try {
      if(state.nextPage != null) {
        // TODO: Load next page
      }
    } catch (e) {
      // TODO: Catch error
    }
  }
}
