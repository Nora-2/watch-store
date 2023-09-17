import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/Splash/presentation/views/splash_screen.dart';
import 'package:signin_signup/Features/cart/presentation/views/cart.dart';
import 'package:signin_signup/Features/home/presentation/views/main_home_screen.dart';
import 'package:signin_signup/Features/profile/presentation/views/login.dart';
import 'package:signin_signup/Features/profile/presentation/views/profiledetailes.dart';
import 'package:signin_signup/Features/profile/presentation/views/profileview.dart';
import 'package:signin_signup/Features/profile/presentation/views/signup.dart';
import 'package:signin_signup/core/components/homelayout.dart';
import 'package:signin_signup/core/cubit_home/homecubit_cubit.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          MainHomeScreen.id: (context) => MainHomeScreen(),
          HomeLayout.id: (context) => HomeLayout(),
          profileView.id: (context) => profileView(),
          profiledetailes.id: (context) => profiledetailes(),
          Cart.id: (context) => Cart(),
          SplashScreen.id: (context) => SplashScreen(),
          SignUp.id: (context) => SignUp(),
          login.id: (context) => login()
        },
        initialRoute: SplashScreen.id,
        title: 'Watch Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 171, 95, 13),
          ),
          useMaterial3: true,
          fontFamily: 'Poppins',
        ),
        home: const HomeLayout(),
      ),
    );
  }
}
