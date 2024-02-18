import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';

class IncomeDetailsBody extends StatelessWidget {
  const IncomeDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;

    return screenWidth >= SizeConfig.desktopBreakpoint && screenWidth < 1500
        ? Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DetailedIncomeChart(),
        ))
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
