import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final Function onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor R\$'),
            ),
            FlatButton(
              onPressed: () => onSubmit(
                  titleController.text, double.parse(valueController.text)),
              child: Text('Nova Transação'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
