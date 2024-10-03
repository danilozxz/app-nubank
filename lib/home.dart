import 'package:flutter/material.dart';
import 'package:nubank/areaAcoes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: const Color(0xFF820AD1),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Color(0xff9B3BDA),
                  //   child: Icon(
                  //     Icons.person,
                  //     color: Color(0xffF5F5F5),
                  //   ),
                  // ),
                  IconButton(
                    icon: const Icon(
                      Icons.account_circle,
                      color: Color(0xffF5F5F5),
                      ),
                    iconSize: 30.0,
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    tooltip: 'Ir para perfil',
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.visibility_outlined,
                        color: Color(0xffF5F5F5),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.question_mark_rounded,
                        color: Color(0xffF5F5F5),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.mark_email_read_outlined,
                        color: Color(0xffF5F5F5),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Olá, Danilo",
                style: TextStyle(
                    color: Color(0xffF5F5F5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Conta",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "R\$0,15",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              AreaAcoes(),
            ],
          ),
        )
      ],
    ));
  }
}
