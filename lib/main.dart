import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/view/dashboard_view.dart';

void main() {
  runApp(const ResponsiveAdminDashboard());
}

class ResponsiveAdminDashboard extends StatelessWidget {
  const ResponsiveAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: DashboardView(),
        );
  }
}
