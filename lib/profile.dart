import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = MediaQuery.sizeOf(context).height * 0.2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 181, 181, 181),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close_rounded)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
        ],
        bottom:
            PreferredSize(
              preferredSize: Size.fromHeight(appBarHeight),
              child: const Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.amber,
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Nesse pique mermo'),
                ),
            )),
      ),
      body: Container(),
    );
  }
}
