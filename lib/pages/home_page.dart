import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/models/user/user_model.dart';
import 'package:urbetrack/widgets/entering_widget.dart';
import 'package:urbetrack/utils/string_utils.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<UsersBloc>().add(GetUsers());
    scrollController.addListener(() {
      if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        if(scrollController.hasClients) context.read<UsersBloc>().add(GetUsersPage());
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Future<void> _getUsers() async {
      final usersBloc = BlocProvider.of<UsersBloc>(context);
      usersBloc.add(GetUsersPage());
    }

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            Text('Menu Uno'),
            Text('Menu Dos'),
            Text('Menu Tres'),
            Text('Menu Cuatro'),
          ],
        )
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          switch (state.status) {
            case UsersStatus.success:
              if(state.users.isEmpty){
                return const Center(child: Text('No se encontraron registros'));
              }
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: RefreshIndicator(
                    onRefresh: () => _getUsers(),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: scrollController,
                      itemCount: state.users.length,
                      itemBuilder: (context, index) {
                        return EnteringAnimation(
                          child: UserWiget(user: state.users[index],),
                          duration: const Duration(milliseconds: 700)
                        );
                      },
                    ),
                  ),
                )
              );
            case UsersStatus.failure:
              return const Center(child: Text('Ocurrio un error'));
            default:
              return const Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }
}


class UserWiget extends StatelessWidget {
  final UserModel user;

  const UserWiget({ Key? key, required this.user }) : super(key: key);

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
              offset: Offset(5,5)
            )
          ]
        ),
        child: ListTile(
          leading: Hero(
            tag: user.name,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')
            ),
          ),
          title: Text(user.name),
          subtitle:  Text('Peso: ${user.mass} - Size: ${user.height} - Sex: ${user.gender.capitalize()}'),
          trailing:  const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}