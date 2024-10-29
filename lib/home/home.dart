/*
  Essa é a seção principal onde parte do layout foi estruturado 
  e classes de seções foram importadas.
*/

import 'package:flutter/material.dart';
import 'package:nubank/home/secoes/areaAcoes.dart';
import 'package:nubank/home/secoes/cartaoDeCredito.dart';
import 'package:nubank/home/secoes/descubraMais.dart';
import 'package:nubank/home/secoes/emprestimo.dart';

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
        backgroundColor: const Color(0xFF820AD1),
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
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mark_email_read_outlined,
              color: Color(0xffF5F5F5),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/conta');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Conta",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text("R\$1295,00",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const AreaAcoes(),
            const SizedBox(height: 30),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Color(0xffF0F1F5),
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text(
                  'Meus cartões',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Card(
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
            const SizedBox(height: 30),
            const Divider(
              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            const SizedBox(height: 30),
            const CartaoDeCredito(),
            const SizedBox(height: 30),
            const Divider(
              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            const SizedBox(height: 30),
            const Emprestimo(),
            const SizedBox(height: 30),
            const Divider(
              color: Color.fromARGB(255, 202, 202, 202),
              thickness: 1,
            ),
            const SizedBox(height: 30),
            const DescubraMais(),
          ],
        ),
      ),
    );
  }
}
