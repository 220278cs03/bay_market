import 'package:flutter/material.dart';

import '../style/style.dart';

// ignore: must_be_immutable
class CustomTabBar extends StatelessWidget {
  TabController tabController;
  CustomTabBar({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        labelStyle: Style.textStyleBold(),
        unselectedLabelStyle: Style.textStyleNormal(
            color: Style.primaryTextColor.withOpacity(0.4)),
        labelColor: Style.primaryTextColor,
        unselectedLabelColor: Style.primaryTextColor.withOpacity(0.4),
        indicatorColor: Style.primaryBlue,
        tabs: const [
          Tab(
            text: "Arenda",
          ),
          Tab(
            text: "Sotib olish",
          ),
        ]);
  }
}
