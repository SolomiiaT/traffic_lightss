import 'package:flutter/material.dart';
import 'package:traffic_lightss/album_page/album_page.dart';
import 'package:traffic_lightss/home_page.dart';

import 'package:traffic_lightss/favourite_page/favourite_page.dart';
import 'package:traffic_lightss/useful_tips.dart/page1.dart';
import 'package:traffic_lightss/useful_tips.dart/page2.dart';
import 'package:traffic_lightss/useful_tips.dart/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: {
        '/': (context) => const HomePage(),
        '/change': (context) => const FavouritePage(),
        '/selection': (context) => const AlbumPage(),
        '/page1': (context) => Page1(),
        '/page2':(context) =>  Page2(),
        '/page3':(context) => const Page3()
      },
      initialRoute: '/',
    );
  }
}
