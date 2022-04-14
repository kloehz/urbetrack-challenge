import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urbetrack/bloc/network/network_bloc.dart';
import 'package:urbetrack/bloc/user_details/user_details_bloc.dart';
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
    final usersBloc = BlocProvider.of<UsersBloc>(context);
    context.read<UserDetailsBloc>().add(UserDetailsEvent.fetchUserDetails(user: widget.user, userbloc: usersBloc));
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
              state.networkStatus ? 'Report' : 'Offline',
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
            onPressed: state.networkStatus ? _reportUser : null,
          );
        },
      ),
      body: BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
          UserModel user = widget.user;
          if(state.status == UserDetailsStatus.success){
            user = state.user!;
            return UserDetailedInfo(user: user, isLoading: false);
          }
          return UserDetailedInfo(user: user, isLoading: true);
        },
      )
    );
  }

  _reportUser(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm', textAlign: TextAlign.center,),
          content: const Text('Report this user?', style: TextStyle(fontSize: 20)),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){ Navigator.pop(context); },
                  child: const Text('Cancel', style: TextStyle(fontSize: 18),)
                ),
                TextButton(
                  onPressed: (){
                    context.read<UsersBloc>().add(UsersEvent.reportUser(user: widget.user));
                    _showToast(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Accept', style: TextStyle(fontSize: 18),)
                )
              ]
            )
          ],
        );
      }
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      const SnackBar(
        content: Text('Reported'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class UserDetailedInfo extends StatelessWidget {
  final UserModel user;
  final bool isLoading;
  
  const UserDetailedInfo({
    Key? key,
    required this.user,
    required this.isLoading
  }) : super(key: key);

  List<Text> parseInfo(List<String> data) {
    return data.map((starship) {
      return starship.startsWith('http')
      ? const Text('Loading')
      : Text(starship);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {

    final String homeworld = user.homeworld.startsWith('http') ? 'Loading...' : user.homeworld;
    final List<Text> vehicles = parseInfo(user.vehicles);
    final List<Text> starships = parseInfo(user.starships);

    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          height: 180,
          child: FittedBox(
            child: Hero(
              tag: user.name,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: Text(user.hair_color.capitalize()),
        ),
        ListTile(
          leading: const Icon(Icons.accessibility_new_outlined),
          title: Text(user.skin_color.capitalize()),
        ),
        ListTile(
          leading: const Icon(Icons.remove_red_eye_outlined),
          title: Text(user.eye_color.capitalize()),
        ),
        ListTile(
          leading: const Icon(Icons.location_city_outlined),
          title: Text(homeworld),
        ),
        ListTile(
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.car_repair)
          ),
          title: user.vehicles.isNotEmpty
            ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: isLoading
                ? [ const Text('Loading') ]
                :  vehicles
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
              children: isLoading
                ? [ const Text('Loading') ]
                : starships
            )
            : const Text('N/A')
        ),
      ]).toList(),
    );
  }
}
