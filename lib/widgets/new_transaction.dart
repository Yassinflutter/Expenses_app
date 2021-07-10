import 'package:flutter/material.dart';

class NewTransactions extends StatefulWidget {
  Function addingTx;
  NewTransactions(this.addingTx);

  @override
  _NewTransactionsState createState() => _NewTransactionsState();
}

class _NewTransactionsState extends State<NewTransactions> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  submittedTx() {
    if (titleController.text.isEmpty) return;
    widget.addingTx(titleController.text, double.parse(amountController.text));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
                onSubmitted: (_) => submittedTx()),
            TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Amount'),
                onSubmitted: (_) => submittedTx()),
            TextButton(
                onPressed: submittedTx,
                child: Text(
                  'Add Transaction',
                ))
          ],
        ),
      ),
    );
  }
}
