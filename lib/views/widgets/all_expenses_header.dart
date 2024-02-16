import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:const [
         Text(
          'All Expenses',
          style: AppStyles.styleSeminBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOptions()
      ],
    );
  }
}

