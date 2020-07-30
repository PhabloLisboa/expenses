import 'dart:math';

import 'package:expenses/Components/transaction_form.dart';
import 'package:expenses/Components/transaction_list.dart';
import 'package:expenses/Models/Transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1', title: 'Amazon Prime', value: 10, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Crunchyroll', value: 24.5, date: DateTime.now()),
  ];

  _updateTransactionList(String title, double value) {
    Transaction newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_updateTransactionList),
      ],
    );
  }
}
