import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionsListview extends StatelessWidget {
  const LatestTransactionsListview({super.key});

  static const List<UserInfoModel> items = [

UserInfoModel(image: Assets.imagesAvatar1, title: 'Madrani Andi', subTitle: 'madraniandi20@gmail'),
UserInfoModel(image: Assets.imagesAvatar2, title: 'Madrani Andi', subTitle: 'madraniandi20@gmail'),
UserInfoModel(image: Assets.imagesAvatar3, title: 'Madrani Andi', subTitle: 'madraniandi20@gmail'),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );
    // return SizedBox(
    //   height:80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index){
    //       return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));
    //     }),
    // );
  }
}