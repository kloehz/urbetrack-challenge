import 'package:flutter/material.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/pages/pages.dart';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case RoutesNames.homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutesNames.userDetails:
      return MaterialPageRoute(builder: (context) => UserDetails(user: settings.arguments as UserModel));
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}