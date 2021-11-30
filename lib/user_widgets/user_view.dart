import 'package:budget_tracker/user_widgets/user_input.dart';
import 'package:flutter/material.dart';

import './transaction_view.dart';
import './user_input.dart';
import '../model/transaction.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final List<Transaction> _userTranscation = [
    Transaction(
      id: 'T001',
      title: 'electricity bill',
      amount: 860,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T002',
      title: 'grocery bill',
      amount: 1497,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String transTitle, double transAmount) {
    final newTranaction = Transaction(
      id: DateTime.now().toString(),
      title: transTitle,
      amount: transAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTranscation.add(newTranaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInput(_addNewTransaction),
        TransactionView(_userTranscation),
      ],
    );
  }
}
