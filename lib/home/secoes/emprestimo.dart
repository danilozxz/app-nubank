/*
  Essa é uma seção simples onde tem informações sobre empréstimo
*/


import 'package:flutter/material.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Empréstimo",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Tudo certo! Você está em dia",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,),
            )],
            ),
      ],
    );
  }
}
