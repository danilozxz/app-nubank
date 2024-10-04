import 'package:flutter/material.dart';
import 'package:nubank/home/areaAcoes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color((0xFF820AD1)),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          tooltip: "Ir para o perfil",
          icon: const Icon(Icons.account_circle),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.visibility_outlined,
              color: Color(0xffF5F5F5),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark_rounded,
                color: Color(0xffF5F5F5),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mark_email_read_outlined,
                color: Color(0xffF5F5F5),
              )),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
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
          Text("R\$0,15",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          AreaAcoes(),
          SizedBox(height: 20),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Color(0xffF0F1F5),
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Meus cartões'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Color(0xffF0F1F5),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  'Guarde seu dinheiro em caixinhas',
                  style: TextStyle(
                      color: Color(0xFF820AD1), fontWeight: FontWeight.bold),
                ),
                Text('Acessando a área de planejamento', style: TextStyle(
                      color: Color(0xff747885))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
