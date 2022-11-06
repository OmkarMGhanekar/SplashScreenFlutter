import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/secondScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondScreeen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     // colors: [Color(0xFFFF8A1F), Color(0xFFE52929)],
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //child:Lottie.asset( 
              //for lottie animation and also uncommenet the line below and json file instead of baggage.jpg to filename.json
              child: Image.asset(
                
                "assets/baggage.jpg",
                height: 200,
                width: 800,
                // repeat: true,
                // reverse: true,
                // animate: true),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("Traveling opens door to creating memories",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.only(top: 70)),
            const CircularProgressIndicator(
                //backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation(Colors.orangeAccent),
                strokeWidth: 5),
          ],
        ),
      ),
    );
  }
}
