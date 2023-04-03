import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';
import 'package:traffic_lightss/grid.dart';
import 'package:traffic_lightss/items.dart';
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
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    //not able to add GestureDetector
                    'Змінити',
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          body: SizedBox(width: 100, height: 200, child: ListOfSongs()),
          bottomNavigationBar: const Buttons()),
    );
  }
}
