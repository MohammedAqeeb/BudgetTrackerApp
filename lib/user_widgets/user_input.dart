import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final Function getNewTransaction;

  final getTitleController = TextEditingController();
  final getAmountController = TextEditingController();

  UserInput(this.getNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
              controller: getTitleController,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
              ),
              controller: getAmountController,
            ),
            TextButton(
              onPressed: () {
                getNewTransaction(getTitleController.text,
                    double.parse(getAmountController.text));
              },
              child: Text(
                'Add Budget',
                style: TextStyle(
                  color: Colors.green.shade800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
