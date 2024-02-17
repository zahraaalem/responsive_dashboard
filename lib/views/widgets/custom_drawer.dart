import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/active_inactive_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.7,
      color: Colors.white,
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com'),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        DrawerListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              Expanded(child: SizedBox(height: 20)),
              InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Setting System')),
              InActiveListTile(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout Account')),
              SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ]),
    );
  }
}
