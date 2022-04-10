import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urbetrack/bloc/users/users_bloc.dart';
import 'package:urbetrack/config/constants/routes_constants.dart';
import 'package:urbetrack/widgets/entering_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    print('initstate');
    final calculatorBloc = BlocProvider.of<UsersBloc>(context);
    calculatorBloc.add(GetUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Future<void> _getUsers() async {
      final calculatorBloc = BlocProvider.of<UsersBloc>(context);
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
          print('state $state');
          if(state is LoadingUsers) {
            return const Center(child: Text('Cargando'));
          }
          if(state is UsersGetted){
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: RefreshIndicator(
                  onRefresh: () => _getUsers(),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, item) {
                      return const EnteringAnimation(
                        child: UserWiget(),
                        duration: Duration(milliseconds: 700)
                      );
                    },
                  ),
                ),
              )
            );
          }
          return const Center(child: Text('Algo salio mal, intente nuevamente'));
        }
      ),
    );
  }
}


class UserWiget extends StatelessWidget {
  const UserWiget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesNames.userDetails);
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
        child: const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/basic_avatar.jpeg')
          ),
          title: Text('Guido Leonel Cotelesso'),
          subtitle:  Text('Peso: 95kg - Size: 1.80mts - Sex: M'),
          trailing:  Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}