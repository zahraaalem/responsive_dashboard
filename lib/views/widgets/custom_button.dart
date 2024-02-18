import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.text, this.textColor});

final Color? backgroundColor;
final String? text;
final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          elevation: 0,
          backgroundColor:backgroundColor?? Color(0xff4DB7F2),
        ),
          onPressed: () {},
          child: Text( text??
            'Send Money',
            style: AppStyles.styleSemiBold18(context).copyWith(color: textColor ),
          )),
    );
  }
}
