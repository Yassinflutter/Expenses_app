// import 'package:flutter/material.dart';
// import '../models/transaction.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   var listOfTransaction = <Transaction>[
//     Transaction('1', 'Shoe', 20, DateTime.now()),
//     Transaction('2', 'T-shirt', 10, DateTime.now()),
//     // Transaction('3', 'Trouser', 15, DateTime.now()),
//     // Transaction('4', 'Sweater', 35, DateTime.now()),
//     // Transaction('4', 'Coat', 25, DateTime.now()),
//     // Transaction('4', 'Socks', 5, DateTime.now()),
//     // Transaction('4', 'Shorts', 17, DateTime.now()),
//     // Transaction('4', 'vest', 50, DateTime.now()),
//     // Transaction('4', 'boots', 26, DateTime.now()),
//     // Transaction('4', 'raincoat', 33, DateTime.now()),
//     // Transaction('4', 'swimsuit', 17, DateTime.now()),
//   ];

//   void addingTransaction(title, amount) {
//     final newTrans = Transaction('id', title, amount, DateTime.now());
//     setState(() {
//       listOfTransaction.add(newTrans);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         NewTransactions(addingTransaction),
//         TransactionList(listOfTransaction),
//       ],
//     );
//   }
// }
