import 'package:flutter/material.dart';
import 'package:traffic_lightss/album_page.dart';
import 'package:traffic_lightss/button_nav_bar.dart';
import 'package:traffic_lightss/favourite_page.dart';
import 'package:traffic_lightss/list_view.dart';
import 'package:traffic_lightss/viewing_page.dart';

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
        '/': (context) => const ViewingPage(),
        '/album': (context) => const AlbumPage(),
        '/favourite': (context) => const FavouritePage()
      },
      initialRoute: '/',
    );
  }
}
