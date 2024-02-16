import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
   DrawerListView({
    super.key,
    
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top :16.0),
            child: GestureDetector(
        onTap: (){
          setState(() {
            activeIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel:items[index], isActive: activeIndex == index,),
        ),
      ),
          );
        },
        childCount: items.length),
    
    );
  }
}