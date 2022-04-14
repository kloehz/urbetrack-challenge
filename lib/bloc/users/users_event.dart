part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.fetchUsers({bool? isRefresh}) = _FetchUsers;
  const factory UsersEvent.fetchUserDetails({required UserModel user}) = _FetchUserDetails;
  const factory UsersEvent.reportUser({required UserModel user}) = _ReportUser;
}