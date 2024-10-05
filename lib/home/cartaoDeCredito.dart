/*
  Essa é a seção onde fica a fatura com os seguintes itens: Informação sobre o fechamento da fatura, valor da fatura, vencimento e botão para pagar
*/

import 'package:flutter/material.dart';

class CartaoDeCredito extends StatefulWidget {
  const CartaoDeCredito({super.key});

  @override
  State<CartaoDeCredito> createState() => _CartaoDeCreditoState();
}

class _CartaoDeCreditoState extends State<CartaoDeCredito> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cartão de crédito",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fatura fechada",
              style: TextStyle(
                color: Color(0xff747885),
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("R\$0,15",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Vencimento dia 02",
              style: TextStyle(
                color: Color(0xff747885),
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF820AD1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                "Pagar fatura",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        )
      ],
    );
  }
}
