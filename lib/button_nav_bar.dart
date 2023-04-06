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
        }
      },
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_rounded),
            label: 'Огляд',
            backgroundColor: Colors.red), //!why background doesnt change
        BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Альбоми'),
      ],
    );
  }
}
