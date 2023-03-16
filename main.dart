import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/Album/album.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/Home/Home.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/Splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: GoogleFonts.inder().fontFamily,
          primaryColor: Colors.white),
      home: splash(),
    );
  }
}
