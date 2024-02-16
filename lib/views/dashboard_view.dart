import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';

class DashboardView
 extends StatelessWidget {
  const DashboardView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF7F9FA),
      body: AdaptiveLayout(mobileLayout: (context) => const SizedBox(), tabletLayout: (context) =>const SizedBox(),
      desktopLayout: (context) =>const DashboardDesktopLayout() ,),

    );
  }
}