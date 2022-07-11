import 'package:apps/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  final List<Transactions> transactions = [
    Transactions(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 15.78,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HIdr'),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map(
                (tx) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            tx.amount.toString(),
                          ),
                        ),
                        Row(
                          children: [Text(tx.title), 
                          Text(tx.date.toString())],
                        )
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
