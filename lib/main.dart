import 'package:expenses/Models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  final _transactions = [
    Transaction(
        id: 't1', title: 'Amazon Prime', value: 10, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Crunchyroll', value: 24.5, date: DateTime.now()),
  ];

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
          Column(
            children: _transactions
                .map((e) => Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              "R\$ ${e.value.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2)),
                            padding: EdgeInsets.all(10),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                e.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(DateFormat('d MMM y').format(e.date),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Título'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Valor R\$'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Nova Transação'),
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
