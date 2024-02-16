import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: CustomDrawer()),
      const SizedBox(
        width: 32,
      ),
      Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
      SizedBox(width: 24,),
      Expanded(child: MyCard())
    ]);
  }
}
