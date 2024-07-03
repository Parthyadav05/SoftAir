import 'dart:async';

import 'package:air_soft/view/login_screen.dart';
import 'package:air_soft/view/onboarding_screen.dart';
import 'package:air_soft/view/splash_screen.dart';
import 'package:air_soft/view_model/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/onboarding':(context)=>OnBoardingScreen(),
      },
    );
  }
}
