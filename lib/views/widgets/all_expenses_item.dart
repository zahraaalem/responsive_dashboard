import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';
import 'package:responsive_dashboard/views/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel): InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}



// allExpensesItemHeaderModel: AllExpensesItemHeaderModel(
//               image: Assets.imagesIncome,
//               date: 'April 2022',
//               title: 'Income',
//               price: r'$20,129'