import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(UsersInitial()) {
    on<GetUsers>((event, emit) => _getUsers(emit, event));
  }


  void _getUsers(Emitter<UsersState> emit, GetUsers event) async {
    print('Called');
    emit(LoadingUsers());
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(UsersGetted());
  }
}
