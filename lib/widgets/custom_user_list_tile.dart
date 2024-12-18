import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/utils/appstyle.dart';

class CustomUserListTile extends StatelessWidget {
  const CustomUserListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
