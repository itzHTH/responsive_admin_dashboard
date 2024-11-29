import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
    super.key,
  });

  static List<DrawerItemModel> items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyInvestments),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: CustomDrawerListView.items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        child: DrawerItem(
          drawerItemModel: CustomDrawerListView.items[index],
          isActive: currentIndex == index,
        ),
      ),
    );
  }
}
