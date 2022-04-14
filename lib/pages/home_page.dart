import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urbetrack/bloc/network/network_bloc.dart';

import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/widgets/entering_widget.dart';
import 'package:urbetrack/utils/string_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<UsersBloc>().add(const UsersEvent.fetchUsers());
    scrollController.addListener(() {
      // if ((scrollController.position.pixels + 10) >= scrollController.position.maxScrollExtent) {}
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final internetStatus = BlocProvider.of<NetworkBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text('Options', style: TextStyle(
                  fontSize: 24
                ))
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Internet:', style: TextStyle(
                      fontSize: 20
                    )),
                    Switch(
                      activeColor: Colors.white,
                      value: state.networkStatus,
                      onChanged: (value) =>
                        internetStatus.add(NetworkEvent.networkChanged(value))
                    )
                  ],
                ),
              )
            ],
          );
        },
      )),
      body: BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
        switch (state.status) {
          case UsersStatus.success:
            final users = state.users!;
            if (users.isEmpty) {
              return const Center(child: Text('No se encontraron registros'));
            }
            return Center(
              child: RefreshIndicator(
                color: Colors.indigo[400],
                onRefresh: () => _getUsers(),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    String key = users.keys.elementAt(index);
                    return EnteringAnimation(
                      child: UserWiget(
                        user: users[key]!,
                      ),
                      duration: const Duration(milliseconds: 700)
                    );
                  },
                ),
              )
            );
          case UsersStatus.failure:
            return const Center(child: Text('Ocurrio un error'));
          default:
            return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }

  Future<void> _getUsers() async {
    // Just to show that we can reset the users
    final usersBloc = BlocProvider.of<UsersBloc>(context);
    usersBloc.add(const UsersEvent.fetchUsers(isRefresh: true));
  }
}

class UserWiget extends StatelessWidget {
  final UserModel user;

  const UserWiget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesNames.userDetails, arguments: user);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(5, 5)
            )
          ]
        ),
        child: _renderUser(user)
      ),
    );
  }

  _renderUser(UserModel user) {
    if(user.isReported == true){
      return ReportedUser(user: user);
    }
    return NormalUser(user: user);
  }

}

class ReportedUser extends StatelessWidget {
  const ReportedUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Banner(
        location: BannerLocation.topStart,
        message: 'Reported',
        child: ListTile(

          textColor: Colors.black,
          leading: Hero(
            tag: user.name,
            child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')),
          ),
          title: Text(user.name),
          subtitle: Text(
              'Weight: ${user.mass} - Size: ${user.height} - Sex: ${user.gender.capitalize()}'),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

class NormalUser extends StatelessWidget {
  const NormalUser({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.black,
      leading: Hero(
        tag: user.name,
        child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')),
      ),
      title: Text(user.name),
      subtitle: Text(
          'Peso: ${user.mass} - Size: ${user.height} - Sex: ${user.gender.capitalize()}'),
      trailing: const Icon(Icons.arrow_forward),
    );
  }
}
