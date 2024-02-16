import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
    scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard()),
    );
    // return PageView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 3,
    //   itemBuilder: ((context, index) {
    //   return MyCard();
    // }));
  }
}