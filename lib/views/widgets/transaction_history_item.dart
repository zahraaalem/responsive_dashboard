import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(transactionModel.title,
        style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(transactionModel.date,
       style: AppStyles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),),
       trailing: Text(transactionModel.amount,
       style: AppStyles.styleSemiBold20(context).copyWith(color:transactionModel.isWithdrawal? Colors.red: Colors.green,),
      )),
    );
  }
}