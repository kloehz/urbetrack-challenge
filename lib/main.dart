import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/config/routes/routes.dart' as routes;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => UsersBloc())
      ],
      child: const MaterialApp(
        title: 'Material App',
        initialRoute: RoutesNames.homePage,
        onGenerateRoute: routes.controller,
      ),
    );
  }
}