import 'package:flutter/material.dart';
import 'package:traffic_lightss/enums.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Дім',
            backgroundColor: Colors.red), //!why background doesnt change
        BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Альбоми'),
        BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined), label: 'Улюблені'),
      ],
    );
  }
}
