import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout_builder.dart';
import 'package:responsive_admin_dashboard/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutBuilder(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout());
  }
}
