import 'package:flutter/material.dart';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/Splash/presentation/views/splash_screen.dart';
import 'package:signin_signup/Features/home/presentation/views/main_home_screen.dart';
import 'package:signin_signup/Features/profile/presentation/views/profiledetailes.dart';
import 'package:signin_signup/Features/profile/presentation/views/profileview.dart';
import 'package:signin_signup/core/components/homelayout.dart';
import 'package:signin_signup/core/cubit_home/homecubit_cubit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomecubitCubit()),
        ],

    child: MaterialApp(

    routes: {

        MainHomeScreen.id:(context) => MainHomeScreen(),
          HomeLayout.id:(context)=>HomeLayout(),
           profileView.id:(context) => profileView(),
          profiledetailes.id:(context) => profiledetailes(),

          SplashScreen.id:(context) => SplashScreen(),

        },

        initialRoute:  SplashScreen.id,

       title: 'Watch Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 171, 95, 13),),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const HomeLayout(),
    ),
    );
  }
}


