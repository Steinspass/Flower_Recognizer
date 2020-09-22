import 'package:flower_clasifier/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: HomePage(),
      title: Text(
        'Classifier Flower',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Color(0xFFFF6489),
        ),
      ),
      image: Image.asset('assets/flower.png'),
      gradientBackground: LinearGradient(
        colors: [ 
        Color(0xFFA7FAAC),
        Color(0xFF64FFDA), 
        Color(0xFF00FFFF)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,

      ),
      photoSize: 50.0,
      loaderColor: Color(0xFFFF6489), 
    );
  }
}