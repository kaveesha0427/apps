import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransaction extends StatelessWidget {
   NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(labelText: 'Title '),
                    controller: titleController(),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Amount '),
                    controller: amountController(),
                   // onChanged: ((value) => enterAmount = value),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    child: const Text('Add Transaction'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
  }
}