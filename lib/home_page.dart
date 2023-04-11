import 'package:flutter/material.dart';
import 'package:traffic_lightss/favourite_page/favourite_page.dart';
import 'package:traffic_lightss/album_page/album_page.dart';
import 'package:traffic_lightss/useful_tips.dart/training_page.dart';
import 'package:traffic_lightss/viewing_page/viewing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const ViewingPage(),
    const AlbumPage(),
    const FavouritePage(),
    const TrainingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.red,
        unselectedItemColor: const Color.fromARGB(255, 122, 111, 111),
        showSelectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_rounded),
            label: 'Огляд',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Альбоми'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: 'Улюблені'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Training')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
