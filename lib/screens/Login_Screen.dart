import 'package:flutter/material.dart';
import 'package:project_42_splash_and_multiple_screens_switching/screens/Home_Screen.dart';

class LoginScreen extends StatefulWidget
{
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>
{
  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/pictures/login2.jpg", fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Welcome To Login Form", style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, ),),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 15.0, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Username",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));
                      },
                      child: Text("Login", style: TextStyle( fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white, ),),
                      style: TextButton.styleFrom(minimumSize: Size(150, 50), backgroundColor: Colors.purple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}