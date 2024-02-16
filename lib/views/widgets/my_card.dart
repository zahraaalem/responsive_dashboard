import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.imagesCardBackground)),
            color: Color(0xff4eb7f2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
            title: Text(
              'Name Card',
              style: AppStyles.styleRegular16.copyWith(color: Colors.white),
            ),
            subtitle: Text(
              'Syah Bandi',
              style: AppStyles.styleMedium20.copyWith(color: Colors.white),
            ),
            trailing: SvgPicture.asset(Assets.imagesGallery),
          ),
          // Expanded(child: const SizedBox()),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style:
                      AppStyles.styleSeminBold24.copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 54 - 28,
          )
        ]),
      ),
    );
  }
}
