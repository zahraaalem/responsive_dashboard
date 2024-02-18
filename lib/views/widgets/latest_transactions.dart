import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/lates_transactions_listview.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Latest Transactions',
        style: AppStyles.styleMedium16(context),),
         SizedBox(height:16),
         LatestTransactionsListview(),

      ],
    );
  }
}

