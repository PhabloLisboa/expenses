import 'package:expenses/Models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> items;

  TransactionList(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Text(
                        "R\$ ${e.value.toStringAsFixed(2)}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
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
    );
  }
}
