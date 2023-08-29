import 'package:flutter/material.dart';
import 'package:signin_signup/components/background.dart';
import 'package:signin_signup/screens/signin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../model/onboarding model.dart';
import '../wedgites/pageviewitem.dart';



class PageViewData {
  PageViewData(
      {required this.image, required this.title, required this.statement});

  late String image, title, statement;
}

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var pageVIewController = PageController();
  int pageIndex = 0;
  

  Widget build(BuildContext context) {
    
    return Scaffold(
        
        backgroundColor: Colors.white,
        body: Background(
       
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height:550,
                width: double.infinity,
                child: PageView.builder(
                  controller: pageVIewController,
                  itemBuilder: (context, index) =>
                      pageViewItem(PageViewItems, index),
                  itemCount: PageViewItems.length,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
                child: Row(
                  children: [
                    TextButton(
                      child: Text("Skip",
                          style: TextStyle(color: Color.fromARGB(255, 225, 121, 243), fontSize: 17)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignIn()));
                      },
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    SmoothPageIndicator(
                      controller: pageVIewController,
                      count: PageViewItems.length,
                      effect: JumpingDotEffect(
                          activeDotColor: Color.fromARGB(255, 225, 121, 243),
                          dotHeight: 7,
                          dotWidth: 7),
                    ),
                    Spacer(),
                    FloatingActionButton(
                        onPressed: () {
                          if (pageIndex != PageViewItems.length - 1)
                            pageVIewController.nextPage(
                              duration: Duration(milliseconds: 350),
                              curve: Curves.ease,
                            );
                          else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          }
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        backgroundColor: Color.fromARGB(255, 225, 121, 243),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

