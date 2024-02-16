import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/custom_text_field.dart';
import 'package:responsive_dashboard/views/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          QuickInvoiceHeader(),
           SizedBox(height:16),
          LatestTransactions(),
          Divider(height:48,
          color: Color(0xfff1f1f1),),
          QuickInvoiceForm(),
          
        //  TitleTextField(hintText: 'Type Customer Name', title: 'Customer Name',),
        ],
      )
    );
  }
}

