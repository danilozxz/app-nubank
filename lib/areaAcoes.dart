import 'package:flutter/material.dart';

class AreaAcoes extends StatefulWidget {
  const AreaAcoes({super.key});

  @override
  State<AreaAcoes> createState() => _AreaAcoesState();
}

class _AreaAcoesState extends State<AreaAcoes> {
  @override
  Widget build(BuildContext context) {
    return const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF0F1F5),
                        child: Icon(
                          Icons.pix,
                          color: Colors.black,
                        ),
                      ),
                      Text("Pix")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF0F1F5),
                        child: Icon(
                          Icons.money,
                          color: Colors.black,
                        ),
                      ),
                      Text("Pagamentos")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF0F1F5),
                        child: Icon(
                          Icons.qr_code,
                          color: Colors.black,
                        ),
                      ),
                      Text("QR Code")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF0F1F5),
                        child: Icon(
                          Icons.attach_money,
                          color: Colors.black,
                        ),
                      ),
                      Text("Transferir")
                    ],
                  ),
                ],
              );
  }
}