import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

 

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {

  int selectedIndex = 0;

 final  items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        price: r'$20,129',
        title: 'Balance',
        date: 'april 2022'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        price: r'$20,129',
        title: 'Income',
        date: 'april 2022'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        price: r'$20,129',
        title: 'Expenses',
        date: 'april 2022'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e))).toList());
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap:() {
                
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesItem(
              allExpensesItemModel: item,
              isSelected: selectedIndex == index,
            ),
            ),
          );
        }
      }).toList(),
    );
  }
}
