import 'package:flutter/material.dart';
import 'package:traffic_lightss/viewing_page.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/album');
            break;
          case 2:
            Navigator.pushNamed(context, '/favourite');
            break;
        }
      },
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.red,//!why selected button doents cange color
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_rounded),
            label: 'Огляд',
            backgroundColor: Colors.red), //!why background doesnt change
        BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Альбоми'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined), label: 'Улюблені')
      ],
    );
  }
}
