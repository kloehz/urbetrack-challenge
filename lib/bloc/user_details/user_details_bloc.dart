import 'package:urbetrack/models/planet/planet_model.dart';
import 'package:urbetrack/models/starship/starship_model.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/models/vehicle/vehicle_model.dart';
import 'package:urbetrack/services/user_details_service.dart';
import 'package:urbetrack/utils/url_utils.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc() : super(const _UserDetailsState()) {
    on<_Loading>((event, emit) => getUserInfo(emit, event));
  }

  void getUserInfo(Emitter<UserDetailsState> emit, _Loading event) async {
    emit(
      state.copyWith(planet: null, status: UserDetailsStatus.loading, vehicles: null, starships: null)
    );

    try {
      final planetId = getUrlLastId(event.user.homeworld);
      final PlanetModel planet = await UserDetailsService().getPlanet(planetId: planetId);
      emit(
        state.copyWith(planet: planet)
      );
    } catch (err) {
      emit(state.copyWith(status: UserDetailsStatus.failure, planet: null));
    }

    try {
      final List<String>vehiclesIds = [];

      for (var vehicle in event.user.vehicles) {
        vehiclesIds.add(getUrlLastId(vehicle));
      }
      final List<VehicleModel?> vehicles = await UserDetailsService().getVehicles(vehicles: vehiclesIds);
      emit(
        state.copyWith(status: UserDetailsStatus.success, vehicles: vehicles)
      );
    } catch (err) {
      emit(state.copyWith(status: UserDetailsStatus.failure, vehicles: null));
    }

    try {
      final List<String>starshipsId = [];

      for (var starship in event.user.starships) {
        starshipsId.add(getUrlLastId(starship));
      }
      final List<StarshipModel?> starships = await UserDetailsService().getStarships(starships: starshipsId);
      emit(
        state.copyWith(status: UserDetailsStatus.success, starships: starships)
      );
    } catch (err) {
      emit(state.copyWith(status: UserDetailsStatus.failure, vehicles: null));
    }
  }
}
