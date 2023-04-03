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
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 16.0, right: 12),
                child: Text(
                  //not able to add GestureDetector
                  'Змінити',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              )
            ],
          ),
          body: ListView(
            children: const [
              Mediateka(),
              SizedBox(height: 300, child: ListOfSongs()),
              RecentlyAdded(),
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: SizedBox(height: 300, width: 300, child: AlbumGrid()),
              ),
            ],
          ),
          bottomNavigationBar: const Buttons(),
        ));
  }
}
