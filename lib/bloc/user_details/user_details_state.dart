part of 'user_details_bloc.dart';

enum UserDetailsStatus { loading, success, failure }

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial({
    @Default(UserDetailsStatus.success) UserDetailsStatus status,
    PlanetModel? planet,
    List<VehicleModel?>? vehicles
  }) = _UserDetailsState;
}
