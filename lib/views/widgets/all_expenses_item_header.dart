import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackgroundColor, this.imageColor});

  final String image;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                    shape: OvalBorder(), color:imageBackgroundColor?? Color(0xffFAFAFA)),
                child: Center(child: SvgPicture.asset(image,
                colorFilter: ColorFilter.mode(imageColor?? Color(0xff4EB7F2), BlendMode.srcIn),)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.5708 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imageColor == null ? const Color(0xFF064061) : Colors.white,
            )
            )
      ],
    );
  }
}
