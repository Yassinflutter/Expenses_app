import 'package:flutter/material.dart';
import './models/transaction.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/user_transaction.dart';
// import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'finalf',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listOfTransaction = <Transaction>[
    Transaction('1', 'Shoe', 20, DateTime.now()),
    Transaction('2', 'T-shirt', 10, DateTime.now()),
    // Transaction('3', 'Trouser', 15, DateTime.now()),
    // Transaction('4', 'Sweater', 35, DateTime.now()),
    // Transaction('4', 'Coat', 25, DateTime.now()),
    // Transaction('4', 'Socks', 5, DateTime.now()),
    // Transaction('4', 'Shorts', 17, DateTime.now()),
    // Transaction('4', 'vest', 50, DateTime.now()),
    // Transaction('4', 'boots', 26, DateTime.now()),
    // Transaction('4', 'raincoat', 33, DateTime.now()),
    // Transaction('4', 'swimsuit', 17, DateTime.now()),
  ];

  void addingTx(title, amount) {
    final newTrans = Transaction('id', title, amount, DateTime.now());
    setState(() {
      listOfTransaction.add(newTrans);
    });
  }

  void addingTxMenu() {
    showModalBottomSheet(
        backgroundColor: Colors.black,
        context: context,
        builder: (_) {
          return NewTransactions(addingTx);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: addingTxMenu,
            )
          ],
          title: Text('FINAL FANTASY'),
          leading: CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.money_sharp),
              onPressed: () => print('Hello'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: addingTxMenu,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          child: TransactionList(listOfTransaction),
        ));
  }
}
