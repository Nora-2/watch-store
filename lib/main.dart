import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:signin_signup/homelayout.dart';



import 'cubit_home/homecubit_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
=======
import 'package:signin_signup/screens/splash/splash_screen.dart';
import 'onBoarding/on_boarding.dart';
>>>>>>> aa2ccbcf1bb9a117ea39cbe7b54707ff418ca7a9

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomecubitCubit()),
        ],
      
    child:MaterialApp(
=======
    return MaterialApp(
>>>>>>> aa2ccbcf1bb9a117ea39cbe7b54707ff418ca7a9
    
       title: 'Watch Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
<<<<<<< HEAD
      home: const HomeLayout(),
    ));
=======
      home: const SplashScreen(),
    );
>>>>>>> aa2ccbcf1bb9a117ea39cbe7b54707ff418ca7a9
  }
}


