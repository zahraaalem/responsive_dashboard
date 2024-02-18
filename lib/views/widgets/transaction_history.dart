import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_item.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 16,),
        Text('13 Apr, 2022',
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xffAAAAAA)),),
        const SizedBox(height: 16,),

        const TransactionHistoryListView(),
      ],
    );
  }
}


