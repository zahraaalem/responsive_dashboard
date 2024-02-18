import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_tranaction_history_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: CustomDrawer()),
      const SizedBox(
        width: 32,
      ),
    Expanded(
      flex: 3,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody:false,
            child: Row(
        children: [
            Expanded(flex: 2, child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: AllExpensesAndQuickInvoiceSection(),
        )),
        SizedBox(width: 24,),
      Expanded(child: Column(
        children:const [
          SizedBox(height:40),
         MyCardAndTransactioHistorySection(),
         SizedBox(height: 24,),
         Expanded(child: IncomeSection()),
        ],
      ))
        ],
      ),
          )
        ],
      )
    )
    ]);
  }
}
  