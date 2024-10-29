import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  const Saldo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [Text("Saldo disponível")],),
        Row(children: [Text("R\$1295,00")],)
      ],
    );
  }
}
