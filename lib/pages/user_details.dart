import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urbetrack/bloc/network/network_bloc.dart';

import 'package:urbetrack/bloc/user_details/user_details_bloc.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/utils/string_utils.dart';

class UserDetails extends StatefulWidget {
  final UserModel user;
  const UserDetails({Key? key, required this.user}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  void initState() {
    super.initState();
    context.read<UserDetailsBloc>().add(UserDetailsEvent.started(widget.user));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: BlocBuilder<NetworkBloc, NetworkState>(
          builder: (context, state) {
            return ElevatedButton(
              child: Text(
                state.networkStatus ? 'Reportar' : 'Offline',
                style: const TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(130, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                ),
              ),
              onPressed: state.networkStatus ? (){} : null,
            );
          },
        ),
        body: BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            return ListView(
              children: ListTile.divideTiles(context: context, tiles: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 50),
                  height: 180,
                  child: FittedBox(
                    child: Hero(
                      tag: widget.user.name,
                      child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/basic_avatar.jpeg')),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(widget.user.hair_color.capitalize()),
                ),
                ListTile(
                  leading: const Icon(Icons.accessibility_new_outlined),
                  title: Text(widget.user.skin_color.capitalize()),
                ),
                ListTile(
                  leading: const Icon(Icons.remove_red_eye_outlined),
                  title: Text(widget.user.eye_color.capitalize()),
                ),
                ListTile(
                  leading: const Icon(Icons.location_city_outlined),
                  title: Text(state.planet != null
                      ? state.planet!.name
                      : 'Cargando...'),
                ),
                ListTile(
                    leading: const SizedBox(
                        height: double.infinity, child: Icon(Icons.car_repair)),
                    title: state.vehicles != null
                        ? state.vehicles!.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: state.vehicles!.map((vehicle) {
                                  return Text(vehicle!.name);
                                }).toList())
                            : const Text('N/A')
                        : const Text('Cargando...')),
                ListTile(
                    leading: const SizedBox(
                        height: double.infinity, child: Icon(Icons.flight)),
                    title: state.starships != null
                        ? state.starships!.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: state.starships!.map((starship) {
                                  return Text(starship!.name);
                                }).toList())
                            : const Text('N/A')
                        : const Text('Cargando...')),
              ]).toList(),
            );
          },
        ));
  }
}
