import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState(){
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.purple,
        title: Text("Home",style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),),
        titleSpacing: 15,
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only( left: 68, top: 30 ),
        child: Text("Welcome To Home Screen", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),
      ),
    );
  }
}