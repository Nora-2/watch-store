import 'package:flutter/material.dart';
import 'package:signin_signup/Features/home/presentation/views/best_deals_tab.dart';
import 'package:signin_signup/Features/home/presentation/views/for_you_tab.dart';
import 'package:signin_signup/Features/home/presentation/views/most_wanted.dart';
import 'package:signin_signup/core/widgets/custom_search_box.dart';
import 'package:signin_signup/core/widgets/custom_tab_bar.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);
 static String id = 'MainHomeScreen';
  @override
  Widget build(BuildContext context) {
    //TextEditingController searchController = TextEditingController();
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
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
                          SizedBox(height: size.height * 0.01),
                          SizedBox(
                            height: size.height * 0.8,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
