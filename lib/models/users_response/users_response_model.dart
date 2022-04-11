import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urbetrack/models/user/user_model.dart';

part 'users_response_model.freezed.dart';
part 'users_response_model.g.dart';

@freezed
class UsersResponseModel with _$UsersResponseModel {
  const factory UsersResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<UserModel> results
  }) = _UsersResponseModel;

  factory UsersResponseModel.fromJson(Map<String, dynamic> json ) => _$UsersResponseModelFromJson(json);
}