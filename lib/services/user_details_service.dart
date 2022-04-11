import 'package:dio/dio.dart';
import 'package:urbetrack/api/api.dart';
import 'package:urbetrack/models/planet/planet_model.dart';
import 'package:urbetrack/models/vehicle/vehicle_model.dart';

class UserDetailsService {
  static UserDetailsService? _instance;

  factory UserDetailsService() => _instance ??= UserDetailsService._();

  UserDetailsService._();

  Future<PlanetModel>getPlanet({required String planetId}) async {
    final res = await Api().dio.get('/planets/$planetId');
    PlanetModel planet = PlanetModel.fromJson(res.data);
    return planet;
  }

  Future<List<VehicleModel?>>getVehicles({required List<String> vehicles}) async {
    final List<Response> responses = await Future.wait(
      vehicles.map((vehicleId) => Api().dio.get('/vehicles/$vehicleId'))
    );
    final List<VehicleModel?> vehiclesParsed = responses.map((vehicle) => VehicleModel.fromJson(vehicle.data)).toList();
    return vehiclesParsed;
  }
}