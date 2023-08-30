import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      dividerColor: Colors.grey,
      indicatorColor: Colors.transparent,
      labelStyle: TextStyle(fontSize: 14,),
      padding: EdgeInsets.symmetric(horizontal: 20),
      tabs: [
        Tab(
          text: 'For You',
        ),
        Tab(
          text: 'Most Wanted',
        ),
        Tab(
          text: 'Best Deals',
        ),
      ],
    );
  }
}
