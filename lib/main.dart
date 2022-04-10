import 'dart:async';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Folklify',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(24, 20, 20, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScrn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScrn extends StatefulWidget {
  @override
  _SplashScrnState createState() => _SplashScrnState();
}

class _SplashScrnState extends State<SplashScrn> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('lib/assets/img/folklofy.png'),
          SizedBox(height: 12),
          Text(
            'Folklofy',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Gotham', fontSize: 28),
          )
        ],
      ),
    ));
  }
}
