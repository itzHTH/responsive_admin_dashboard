import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';

import '../utils/appstyle.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: AppStyle.styleBold16,
        ),
        trailing: Container(
          width: 3.27,
          color: const Color(0xff4EB7F2),
        ),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: AppStyle.styleRegular16,
        ),
      ),
    );
  }
}
