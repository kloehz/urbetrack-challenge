import 'package:urbetrack/api/api.dart';
import 'package:urbetrack/models/users_response/users_response_model.dart';

class UsersService {
  static UsersService? _instance;
  factory UsersService() => _instance ??= UsersService._();

  UsersService._();

  Future<UsersResponseModel>getUsers() async {
    final res = await Api().dio.get('/people');
    UsersResponseModel usersResponse = UsersResponseModel.fromJson(res.data);
    return usersResponse;
  }

  Future<UsersResponseModel>getNewPage(String newPage) async {
    final res = await Api().dio.get('');
    UsersResponseModel usersResponse = UsersResponseModel.fromJson(res.data);
    return usersResponse;
  }
}