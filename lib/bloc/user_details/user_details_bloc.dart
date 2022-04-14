import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/models/starship/starship_model.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/services/user_details_service.dart';
import 'package:urbetrack/utils/url_utils.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc() : super(const _UserDetails()) {
    on<_FetchUserDetails>((event, emit) => _fetchUserDetails(emit, event));
  }

  _fetchUserDetails(Emitter<UserDetailsState> emit, _FetchUserDetails event) async {

    emit(state.copyWith(status: UserDetailsStatus.loading));

    List<String> vehiclesParsed = [];
    List<String> starShipsParsed = [];

    try {
      
      String planet = event.user.homeworld;

      if(event.user.homeworld.startsWith('http')){
        final planetId = getUrlLastId(event.user.homeworld);
        final planetFetched =  await UserDetailsService().getPlanet(planetId: planetId);
        planet = planetFetched.name;
      }

        final updatedVehicles = event.user.vehicles.where((vehicle) => vehicle.startsWith('http')).toList();
        if(updatedVehicles.isNotEmpty) {
          final List<String>vehiclesIds = [];

          for (var vehicle in updatedVehicles) {
            vehiclesIds.add(getUrlLastId(vehicle));
          }
          final vehicles = await UserDetailsService().getVehicles(vehicles: vehiclesIds);
          vehicles.map((item) => vehiclesParsed.add(item!.name)).toList();
        } else {
          vehiclesParsed = event.user.vehicles;
        }

        final updatedStarships = event.user.starships.where((starships) => starships.startsWith('http')).toList();

        if(updatedStarships.isNotEmpty) {
          final List<String>starshipsId = [];
          for (var starship in updatedStarships) {
            starshipsId.add(getUrlLastId(starship));
          }
          final List<StarshipModel?> starships = await UserDetailsService().getStarships(starships: starshipsId);
          starships.map((starship) => starShipsParsed.add(starship!.name)).toList();
        } else {
          starShipsParsed = event.user.starships;
        }

        final userUpdated = event.user.copyWith(
          homeworld: planet,
          vehicles: vehiclesParsed,
          starships: starShipsParsed
        );

        emit(state.copyWith(status: UserDetailsStatus.success, user: userUpdated));
        event.userbloc.add(UsersEvent.fetchUserDetails(user: userUpdated));
    } catch (err) {
      //Log
    }
  }
}
