/*
  Essa é a seção onde ficam os itens: PIX, Pagamentos, QRCode e Transferir
*/

import 'package:flutter/material.dart';

class AreaAcoes extends StatefulWidget {
  const AreaAcoes({super.key});

  @override
  State<AreaAcoes> createState() => _AreaAcoesState();
}

class _AreaAcoesState extends State<AreaAcoes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              icon: const Icon(Icons.pix),
            ),
          ),
          const Text(
            "Pix",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              icon: const Icon(Icons.money),
            ),
          ),
          const Text(
            "Pagamentos",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              icon: const Icon(Icons.qr_code),
            ),
          ),
          const Text(
            "QR Code",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              icon: const Icon(Icons.attach_money),
            ),
          ),
          const Text(
            "Transferir",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]),
      ],
    );
  }
}
