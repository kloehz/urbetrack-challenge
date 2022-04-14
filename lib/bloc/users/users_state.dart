part of 'users_bloc.dart';

enum UsersStatus { loading, success, failure }

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial({
    @Default(UsersStatus.loading) UsersStatus status,
    Map<String, UserModel>? users,
  }) = _UsersState;
}