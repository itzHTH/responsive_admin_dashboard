import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';

import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_admin_dashboard/widgets/custom_user_list_tile.dart';

import 'custom_drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomUserListTile(
                image: Assets.imagesProfileIcon,
                title: "Leader",
                subtitle: "Aadmin@mail.com"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSetting)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
