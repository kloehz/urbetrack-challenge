part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.fetchUserDetails({ required UserModel user, required UsersBloc userbloc }) = _FetchUserDetails;
}