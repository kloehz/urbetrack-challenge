part of 'users_bloc.dart';

enum UsersStatus { loading, success, failure }

class UsersState extends Equatable {
  final List<UserModel> users;
  final UsersStatus status;
  final String? nextPage;

  const UsersState({
    this.status = UsersStatus.loading,
    this.users = const <UserModel>[],
    this.nextPage 
  });

  UsersState copyWith({
    UsersStatus? status,
    List<UserModel>? users,
    String? nextPage
  }) {
    return UsersState(
      status: status ?? this.status,
      users:  users ?? this.users,
      nextPage: nextPage ?? this.nextPage
    );
  }

  @override
  List<Object> get props => [status, users];
}