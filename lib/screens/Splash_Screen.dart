import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_42_splash_and_multiple_screens_switching/screens/Login_Screen.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Timer( Duration( seconds: 4 ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen() ) );
    }, );
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      backgroundColor: Colors.black87,
      primary: true,
      body: Center(child: Text("Splash Screen", style: TextStyle( fontSize: 55, fontWeight: FontWeight.bold, color: Colors.red ),)),
    );
  }
}