import 'package:flutter/material.dart';
import 'package:signin_signup/homelayout.dart';
import 'package:signin_signup/screens/home/main_home_screen.dart';

import 'package:signin_signup/screens/profiledetailes.dart';
import 'package:signin_signup/screens/profileview.dart';




import 'cubit_home/homecubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
          profiledetailes.id:(context) => profiledetailes()


        },

        initialRoute:  HomeLayout.id,

       title: 'Watch Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const HomeLayout(),
    ),
    );
  }
}


