import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(width: 18,),
          Transform.rotate(
              angle: 4.71239,
              child:const Icon(Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),))
        ],
      ),
    );
  }
}
