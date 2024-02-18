import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: OvalBorder(), color: incomeDetailsItemModel.color),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsItemModel.percentage,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}