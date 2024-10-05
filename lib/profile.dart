import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = MediaQuery.sizeOf(context).height * 0.2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF820AD1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close_rounded), color: Colors.white,),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline_rounded), color: Colors.white,),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(appBarHeight),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Color(0xffF5F5F5),
              child: ListTile(
                leading: Image.asset('images/logo.png'),
                title: const Text('Seu banco preferido', style: TextStyle(fontWeight: FontWeight.bold),),
                textColor: Color(0xFF820AD1),
              ),
            )),
      ),
      body: Container(),
    );
  }
}
