import 'package:daftar_film/beranda_film.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF1D2027),
          primaryColor: Color(0xFF1D2027)),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: BerandaFilm(),
          title: new Text(
            'FilmKeun App',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          image: new Image.asset('assets/images/icon.png'),
          photoSize: 100.0,
          backgroundColor: Color(0xFF1D2027),
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Colors.white),
    );
  }
}
