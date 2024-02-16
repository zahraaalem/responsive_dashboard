import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_listview.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child:Column(children: [
        AllExpensesHeader(),
        SizedBox(height: 16,),
        AllExpensesItemListView()
      ]),);
  }
}

