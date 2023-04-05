import 'package:flutter/material.dart';
import 'package:traffic_lightss/grid.dart';
import 'package:traffic_lightss/rows.dart';

class ListOfSongs extends StatelessWidget {
  const ListOfSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      //TODO: you can ListView only but do not use ListView.builder here. It is not needed. You can use for loop to iterate over listOfItemOptions and add each item to ListView children and then add RecentlyAdded and AlbumGrid to ListView children.
      children: const [Mediateka(), AlbumGrid(), RecentlyAdded()],
    );
  }

  //TODO: you can have methods to init your data and use in build method
  List<MenuItem> _initListOfItemOptions() {
    return const [
      MenuItem(icon: Icons.music_note, text: 'Підбірки'),
      MenuItem(icon: Icons.music_note_outlined, text: 'Виконавці'),
      MenuItem(icon: Icons.note_sharp, text: 'Альбоми'),
      MenuItem(icon: Icons.single_bed, text: 'Пісні'),
      MenuItem(icon: Icons.music_off, text: 'Підібрано для вас'),
      MenuItem(icon: Icons.music_off_outlined, text: 'Жанри'),
      MenuItem(icon: Icons.album_sharp, text: 'Збірки'),
      MenuItem(icon: Icons.photo_album_rounded, text: 'Композитори'),
      MenuItem(icon: Icons.download, text: 'Викачані')
      //...
      // continue like this, then use this method in build method to get the list. Remove static field at line 8
    ];
  }
}

class MenuItem {
  final IconData icon;
  final String text;
  final bool isVisible; // can be used later to show or hide this item

  const MenuItem(
      {required this.icon, required this.text, this.isVisible = true});
}
