import 'package:flutter/material.dart';
import 'package:urbetrack/widgets/entering_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        child: const Text('Informar', style: TextStyle(fontSize: 18),),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(130, 50)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
          ),
        ),
        onPressed: (){},
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, item) {
              return const EnteringAnimation(
                child: UserWiget(),
                duration: Duration(milliseconds: 700)
              );
            },
          ),
        )
      ),
    );
  }
}


class UserWiget extends StatelessWidget {
  const UserWiget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          backgroundColor: Colors.red,
        ),
        title: Text('Guido Leonel Cotelesso'),
        subtitle: Text('Peso: 95kg - Size: 1.80mts - Sex: M'),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}