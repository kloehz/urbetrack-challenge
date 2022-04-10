import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Hero(
        tag: 'test',
        child: ElevatedButton(
          child: const Text('Reportar', style: TextStyle(fontSize: 18),),
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
      ),
      body: const Center(child: Text('UserDetails page'))
    );
  }
}