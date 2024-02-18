import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
        title: 'Device Service', percentage: '40%', color: Color(0xff208bc7)),
    IncomeDetailsItemModel(
        title: 'Design Product', percentage: '25%', color: Color(0xff4bd7f2)),
    IncomeDetailsItemModel(
        title: 'Product Royality', percentage: '20%', color: Color(0xff064060)),
    IncomeDetailsItemModel(
        title: 'Other', percentage: '22%', color: Color(0xffe2decd)),
  ];

  @override
  Widget build(BuildContext context) {
    //log(MediaQuery.of(context).size.width.toString());

    return Column(
      children: items.map((e) => IncomeDetailsItem(incomeDetailsItemModel: e)).toList(),
    );
  }
}


