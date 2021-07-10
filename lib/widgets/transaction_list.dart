import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> listOfTransaction;

  TransactionList(this.listOfTransaction);

  String dateNow() {
    return '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day} (${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second})';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemCount: listOfTransaction.length,
        itemBuilder: (ctx, index) {
          return Card(
              // color: Colors.blueGrey,
              child: Row(children: [
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 3,
                  ),
                ),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(vertical: 5),
                // color: Colors.purple,
                child: Text(
                    '\$${listOfTransaction[index].amount.toStringAsFixed(2)}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    listOfTransaction[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  dateNow(),
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            )
          ])
              // color: Colors.teal,
              );
        },
      ),
    );
  }
}
