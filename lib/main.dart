import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/learner/Mentor_description.dart';
import 'package:salahkar/screens/Homescreen.dart';
import 'dart:async';

import 'package:salahkar/screens/OnboardingScreen.dart';
import 'package:salahkar/screens/profile_setup/Mprofile_setup.dart';
import 'package:salahkar/screens/test.dart';

void main() {
  runApp(
       MyApp(),);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salahkar',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                OnboardingScreen(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Align(
              alignment: Alignment.center,

              child:Container(
                alignment: Alignment.center,
                child:Image.asset('assets/logo.png'),
              ),
            ),
            SizedBox(height:100,),
            Text("Made In India",textAlign: TextAlign.end,)


          ])

    );
  }
}