import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signin_signup/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:signin_signup/core/components/homelayout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
  
         initSlidingAnimation();    
 
    

    navigateToHome();
  }

  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/splash.jpg',
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.32,
                      ),
                       SlidingText(slidingAnimation: slidingAnimation),
                      // const Text(
                      //   'Watch X',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       fontSize: 50,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white
                      //   ),
                      // ),
                      // // const Text(
                      // //   'X',
                      // //   textAlign: TextAlign.center,
                      // //   style: TextStyle(
                      // //       fontSize: 70,
                      // //       fontWeight: FontWeight.bold,
                      // //       color: Colors.white
                      // //   ),
                      // // ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.15,
                      // ),
                      // const CircularProgressIndicator(
                      //   color: Colors.white,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
       Navigator.pushNamedAndRemoveUntil(context, HomeLayout.id, (route) => false);
      },
    );
  }
}
