import 'package:flutter/material.dart';
import 'package:nubank/home/areaAcoes.dart';
import 'package:nubank/home/cartaoDeCredito.dart';
import 'package:nubank/home/emprestimo.dart';

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
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
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
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 10),
            Text("R\$1295,00",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            AreaAcoes(),
            SizedBox(height: 30),
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
              child: ListTile(
                title: Text(
                  'Guarde seu dinheiro em caixinhas',
                  style: TextStyle(
                      color: Color(0xFF820AD1), fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Acessando a área de planejamento",
                  style: TextStyle(
                    color: Color(0xff747885),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(

              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
            CartaoDeCredito(),

            SizedBox(
              height: 30,
            ),
            Divider(

              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),

            Emprestimo(),

             SizedBox(
              height: 30,
            ),
            Divider(

              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
