import 'package:flutter/material.dart';
import 'package:traffic_lightss/grid.dart';
import 'package:traffic_lightss/rows.dart';

class ListOfSongs extends StatelessWidget {
  //TODO: this is bad. 1st - usage of dynamic, 2nd too overloaded variable listOfItemOptions with nested maps.
  //better create class MenuItem or name as you wish with fields icon and text. see line 43
  static // -> not make such fields static since it should not be visible and accessible elsewhere
      final List<Map<String, dynamic>> listOfItemOptions = [
    // use underscore for private fields, and you can initialize it in build method
    const {'icon': Icons.music_note, 'text': 'Підбірки'},
    const {'icon': Icons.music_note_outlined, 'text': 'Виконавці'},
    const {'icon': Icons.note_sharp, 'text': 'Альбоми'},
    const {'icon': Icons.single_bed, 'text': 'Пісні'},
    const {'icon': Icons.music_off, 'text': 'Підібрано для вас'},
    const {'icon': Icons.music_off_outlined, 'text': 'Жанри'},
    const {'icon': Icons.album_sharp, 'text': 'Збірки'},
    const {'icon': Icons.photo_album_rounded, 'text': 'Композитори'},
    const {'icon': Icons.download, 'text': 'Викачані'}
  ];
  const ListOfSongs({super.key});

  @override
  Widget build(BuildContext context) {
    // as an example List<MenuItem> _listOfItemOptions = _initListOfItemOptions();
    return Column(
      //TODO: you can ListView only but do not use ListView.builder here. It is not needed. You can use for loop to iterate over listOfItemOptions and add each item to ListView children and then add RecentlyAdded and AlbumGrid to ListView children.
      children: [
        ListView.builder(
            itemCount: listOfItemOptions.length,
            itemBuilder: ((BuildContext context, index) => GestureDetector(
                    child: ListTile(
                  onTap: () {},
                  iconColor: Colors.red,
                  textColor: Colors.white,
                  leading: Icon(listOfItemOptions[index]['icon']),
                  title: Text(listOfItemOptions[index]['text']),
                  trailing: const Icon(Icons.arrow_forward),
                )))),
        const RecentlyAdded(),
        const AlbumGrid(),
      ],
    );
  }

  //TODO: you can have methods to init your data and use in build method
  List<MenuItem> _initListOfItemOptions() {
    return [
      MenuItem(icon: Icons.music_note, text: 'Підбірки'),
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
