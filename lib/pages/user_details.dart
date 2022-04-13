import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urbetrack/bloc/network/network_bloc.dart';
import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/utils/string_utils.dart';

class UserDetails extends StatefulWidget {
  final UserModel user;
  const UserDetails({Key? key, required this.user}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    context.read<UsersBloc>().add(UsersEvent.fetchUserDetails(user: widget.user));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
            onPressed: state.networkStatus ? () {} : null,
          );
        },
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          UserModel user = widget.user;
          if(state.status == UsersStatus.success){
            user = state.users!.firstWhere((user) => user.name == widget.user.name);
          }
          return ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                height: 180,
                child: FittedBox(
                  child: Hero(
                    tag: widget.user.name,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')
                    ),
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
                title: Text(user.homeworld.startsWith('https')
                  ? 'Cargando...'
                  : user.homeworld
                ),
              ),
              ListTile(
                leading: const SizedBox(
                  height: double.infinity,
                  child: Icon(Icons.car_repair)
                ),
                title: user.vehicles.isNotEmpty
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: user.vehicles.map((vehicle) {
                      return vehicle.startsWith('http')
                      ? const Text('Cargando...')
                      : Text(vehicle);
                    }).toList()
                  )
                  : const Text('N/A')
              ),
              ListTile(
                leading: const SizedBox(
                  height: double.infinity, child: Icon(Icons.flight)
                ),
                title: user.starships.isNotEmpty
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: user.starships.map((starship) {
                      return starship.startsWith('http')
                      ? const Text('Cargando')
                      : Text(starship);
                    }).toList()
                  )
                  : const Text('N/A')
              ),
            ]).toList(),
          );
        },
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}
