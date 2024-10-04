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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(24),
              onPressed: () {},
              icon: const Icon(Icons.pix),
            ),
          ),
          const Text(
            "Pix",
            
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(24),
              onPressed: () {},
              icon: const Icon(Icons.money),
            ),
          ),
          const Text(
            "Pagamentos",
            
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(24),
              onPressed: () {},
              icon: const Icon(Icons.qr_code),
            ),
          ),
          const Text(
            "QR Code",
            
          ),
        ]),
        Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF0F1F5), shape: BoxShape.circle),
            child: IconButton(
              padding: const EdgeInsets.all(24),
              onPressed: () {},
              icon: const Icon(Icons.attach_money),
            ),
          ),
          const Text(
            "Transferir",
            
          ),
        ]),
      ],
    );
  }
}