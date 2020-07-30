import 'package:expenses/Components/transaction_user.dart';
import 'package:expenses/Models/Transaction.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.purple),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Gráfico'),
            ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
