import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page Project',
        date: '13 Apr, 2022 at 03:30pm',
        amount: r'$2000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App Project',
        date: '13 Apr, 2022 at 03:30pm',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(transactionModel: e)).toList()
    );
  //   return ListView.builder(
  //     itemCount: items.length,
  //     shrinkWrap: true,
  //     scrollDirection: Axis.vertical,
  //     itemBuilder: (context, index) {
  //     return TransactionHistoryItem(
  //       transactionModel: items[index],
  //     );
  //   });
   }
}
