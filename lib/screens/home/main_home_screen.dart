import 'package:flutter/material.dart';
import 'package:signin_signup/screens/home/best_deals_tab.dart';
import 'package:signin_signup/screens/home/for_you_tab.dart';
import 'package:signin_signup/screens/home/most_wanted.dart';
import 'package:signin_signup/wedgites/custom_container_product.dart';
import 'package:signin_signup/wedgites/custom_search_box.dart';
import 'package:signin_signup/wedgites/custom_tab_bar.dart';
import 'package:signin_signup/wedgites/custome_best_deal.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TextEditingController searchController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.02),
                CustomSearchBox(size: size),
                SizedBox(height: size.height * 0.02),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const CustomTabBar(),
                      SizedBox(height: size.height * 0.02),
                      SizedBox(
                        height: size.height * 0.801,
                        child: TabBarView(
                          children: [
                            ForYouTab(size: size),
                             Center(
                            child: MostWantedScreen(),
                            ),
                             Center(
                             child: BestDealTab(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
