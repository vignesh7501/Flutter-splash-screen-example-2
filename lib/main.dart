import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreenDemo(),
    );
  }
}

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      backgroundColor: Colors.orange,
      image: Image.asset('assets/images/logo.png'),
      title: Text("Welcome to Flutter"),
      photoSize: 50.0,
      loaderColor: Colors.white,
      navigateAfterSeconds: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String aboutFlutter =
      "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/logo.png", height: 200.0),
            Text(aboutFlutter),
          ],
        ),
      ),
    );
  }
}
