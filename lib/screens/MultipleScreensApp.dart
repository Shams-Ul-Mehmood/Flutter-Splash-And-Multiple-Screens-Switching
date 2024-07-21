import 'package:flutter/material.dart';

import 'Home_Screen.dart';
import 'Login_Screen.dart';
import 'Splash_Screen.dart';

class Multiple_Screens_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      title: "Multiple Screens Application",
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // home: LoginScreen(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      initialRoute: "/splash",
      routes: {
        '/splash' : (buildContext) => SplashScreen(),
        "/login" : (buildContext) => LoginScreen(),
        '/home' : (buildContext) => HomeScreen(),
      },
    );
  }
}