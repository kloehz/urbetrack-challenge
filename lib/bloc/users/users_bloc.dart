import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:urbetrack/models/planet/planet_model.dart';
import 'package:urbetrack/models/starship/starship_model.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/models/users_response/users_response_model.dart';
import 'package:urbetrack/services/user_details_service.dart';
import 'package:urbetrack/services/users_service.dart';
import 'package:urbetrack/utils/url_utils.dart';

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

    List<String> vehiclesParsed = [];
    List<String> starShipsParsed = [];

    try {
      if(event.user.homeworld.startsWith('http')) {
        emit(state.copyWith(status: UsersStatus.updatingUser));

        final planetId = getUrlLastId(event.user.homeworld);
        final PlanetModel planet = await UserDetailsService().getPlanet(planetId: planetId);

        final updateVehicles = event.user.vehicles.where((vehicle) => vehicle.startsWith('http')).toList();

        if(updateVehicles.isNotEmpty) {
          final List<String>vehiclesIds = [];

          for (var vehicle in updateVehicles) {
            vehiclesIds.add(getUrlLastId(vehicle));
          }
          final vehicles = await UserDetailsService().getVehicles(vehicles: vehiclesIds);
          vehicles.map((item) => vehiclesParsed.add(item!.name)).toList();
        }

        final updateStarships = event.user.starships.where((starships) => starships.startsWith('http')).toList();

        if(updateStarships.isNotEmpty) {
          final List<String>starshipsId = [];

          for (var starship in updateStarships) {
            starshipsId.add(getUrlLastId(starship));
          }
          final List<StarshipModel?> starships = await UserDetailsService().getStarships(starships: starshipsId);
          starships.map((starship) => starShipsParsed.add(starship!.name)).toList();
        }

        final usersParsed = state.users;
        usersParsed![event.user.name] = event.user.copyWith(
          vehicles: vehiclesParsed,
          homeworld: planet.name,
          starships: starShipsParsed
        );

        emit(
          state.copyWith(
            users: usersParsed,
            status: UsersStatus.success
          )
        );
      }
    } catch (err, stackTrace) {
      //Log
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }

  @override
  UsersState? fromJson(Map<String, dynamic> json) {
    try {
      final Map<String, UserModel> usersList = {};
      json['users'].map((user) => usersList[user['name']] = UserModel.fromJson(user)).toList();

      return UsersState.initial(users: usersList, status: UsersStatus.success);
    } catch (err) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(UsersState state) {
    return {'users': state.users};
  }
}