import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, PieTouchResponse) {
            activeIndex =
                PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset:activeIndex == 0 ? 1.5:null ,
              radius: activeIndex == 0 ? 60 : 50,
              showTitle: true,
              title:activeIndex == 0 ? 'Device Service' : '40%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ? null: Colors.white),
              value: 40,
              color: Color(0xff208bc7)),
          PieChartSectionData(
            titlePositionPercentageOffset:activeIndex == 1 ? 1.5:null ,
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: true,
              title:activeIndex == 1 ?  'Design Product': '25%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ? null: Colors.white),
              value: 25,
              color: Color(0xff4db7f2)),
          PieChartSectionData(
             titlePositionPercentageOffset:activeIndex == 2 ? 1.5:null ,
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: true,
              title:activeIndex == 2 ? 'Product Royality':'20%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 2 ? null: Colors.white),
              value: 20,
              color: Color(0xff064060)),
          PieChartSectionData(
             titlePositionPercentageOffset:activeIndex == 3 ? 1.5:null ,
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: true,
              title:activeIndex == 3 ? 'Other' : '22%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 3 ? null: Colors.white),
              value: 22,
              color: Color(0xffe2decd)),
        ]);
  }
}
