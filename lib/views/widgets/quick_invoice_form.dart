import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: TitleTextField(
                  title: 'Customer Name', hintText: 'Type Customer Name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hintText: 'Type Customer Email'),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
              child: TitleTextField(
                  title: 'Item Name', hintText: 'Type Customer Name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item Amount', hintText: 'USD'),
            )
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: const[
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
                text: 'Add more details',
              ),
            ),
            SizedBox(width: 24,),
            Expanded(
              child: CustomButton(),
            ),
            
            
          ],
        ),
      ],
    );
  }
}
