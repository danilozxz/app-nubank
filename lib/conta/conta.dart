import 'package:flutter/material.dart';
import 'package:nubank/conta/secoes/financeiro.dart';
import 'package:nubank/conta/secoes/historico.dart';
import 'package:nubank/conta/secoes/saldo.dart';
import 'package:nubank/home/secoes/areaAcoes.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF820AD1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: "Voltar para tela inicial",
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark_rounded,
              color: Color(0xffF5F5F5),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            Saldo(),
            Financeiro(),
            SizedBox(height: 20,),
            AreaAcoes(),
            SizedBox(height: 20,),
            Historico(),
          ],
        ),
      ),
    );
  }
}