import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';
import 'package:traffic_lightss/album_grid.dart';
import 'package:traffic_lightss/list_view.dart';
import 'package:traffic_lightss/rows.dart';

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
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 12),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Змінити',
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          body: const ListOfSongs(),
          bottomNavigationBar: const Buttons()),
    );
  }
}
