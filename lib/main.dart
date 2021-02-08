import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:house_cleaning/Theme/colors.dart';
import 'package:house_cleaning/screens/home_screen.dart';
import 'package:house_cleaning/screens/onboarding_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House Cleaning',
      theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          fontFamily: "Montserrat",
          textTheme: ThemeData.light().textTheme.copyWith(
              headline2: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
                  fontSize: 40,
                  color: headingColor),
              headline4: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Ubuntu",
                  fontSize: 20,
                  color: headingColor),
              subtitle2: TextStyle(
                  fontFamily: 'Montserrat',
                  color: headingColor,
                  fontWeight: FontWeight.w500))),
      initialRoute: OnboardingScreen.routeName,
      routes: {
        OnboardingScreen.routeName: (_) => OnboardingScreen(),
        HomeScreen.routeName: (_) => HomeScreen()
      },
    );
  }
}
