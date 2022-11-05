import 'package:flutter/material.dart';
import 'package:splashscreen/splash_screen.dart';
import 'package:splashscreen/utlis/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        accentColor: Color(0xFFD8ECF1),
        primaryColor: Color(0xFF3EBACE),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.secondRoute,
      routes: {MyRoutes.secondRoute: (context) => SplashScreen()},
    );
  }
}
