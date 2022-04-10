import 'package:flutter/material.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/pages/pages.dart';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case RoutesNames.homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutesNames.userDetails:
      return MaterialPageRoute(builder: (context) => const UserDetails());
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}