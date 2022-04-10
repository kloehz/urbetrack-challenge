part of 'users_bloc.dart';

@immutable
abstract class UsersState {}

class UsersInitial extends UsersState {}

class LoadingUsers extends UsersState {}

class UsersGetted extends UsersState {}