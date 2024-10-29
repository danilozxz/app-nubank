import 'package:flutter/material.dart';

class Financeiro extends StatelessWidget {
  const Financeiro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card(
          margin: EdgeInsets.all(0),
          elevation: 0,
          color: Colors.transparent,
          // color: Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.abc),
            title: Text("Saldo separado", style: TextStyle(fontSize: 14)),
            subtitle: Text("R\$100,00", style: TextStyle(fontSize: 12),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
        Card(
          margin: EdgeInsets.all(0),
          elevation: 0,
          color: Colors.transparent,
          // color: Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.monetization_on_outlined),
            title: Text("Tudo certo com suas contas?", style: TextStyle(fontSize: 14)),
            subtitle: Text("Ir para assistente de pagamentos", style: TextStyle(fontSize: 12)),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
        Card(
          margin: EdgeInsets.all(0),
          elevation: 0,
          color: Colors.transparent,
          // color: Colors.transparent,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.attach_money_outlined),
            title: Text("Meus investimentos", style: TextStyle(fontSize: 14)),
            subtitle: Text("Organize e conquiste objetivos", style: TextStyle(fontSize: 12)),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
