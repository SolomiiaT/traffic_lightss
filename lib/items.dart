import 'package:flutter/material.dart';
import 'package:traffic_lightss/grid.dart';
import 'package:traffic_lightss/rows.dart';

class ListOfSongs extends StatelessWidget {
  static final List<Map<String, dynamic>> listOfItemOptions = [
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
    return ListView.builder(
        itemCount: listOfItemOptions.length,
        itemBuilder: ((BuildContext context, index) {
          return Column(
            children: [
              GestureDetector(
                  child: ListTile(
                onTap: () {},
                iconColor: Colors.red,
                textColor: Colors.white,
                leading: Icon(listOfItemOptions[index]['icon']),
                title: Text(listOfItemOptions[index]['text']),
                trailing: const Icon(Icons.arrow_forward),
              )),
              const RecentlyAdded(),
              const AlbumGrid(),
            ],
          );
        }));
  }
}
