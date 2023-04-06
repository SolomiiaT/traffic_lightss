import 'package:flutter/material.dart';
import 'package:traffic_lightss/album_grid.dart';
import 'package:traffic_lightss/rows.dart';

class ListOfSongs extends StatelessWidget {
  const ListOfSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Header(),
        for (final item in _initListOfItemOptions()) ...[
          if (item.isVisible) ...[
            ListTile(
              trailing: Icon(
                item.iconForward,
                color: Colors.grey,
              ),
              leading: Icon(
                item.icon,
                color: Colors.red,
              ),
              title: Text(
                item.text,
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Container(height: 1, color: Colors.grey)
          ]
        ],
        const SizedBox(
          height: 15,
        ),
        const RecentlyAdded(),
        const SizedBox(
          height: 15,
        ),
        const AlbumGrid(),
      ],
    );
  }

  List<MenuItem> _initListOfItemOptions() {
    return [
      MenuItem(
          icon: Icons.music_note,
          text: 'Підбірки',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.music_note_outlined,
          text: 'Виконавці',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.note_sharp,
          text: 'Альбоми',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.single_bed,
          text: 'Пісні',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.music_off,
          text: 'Підібрано для вас',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.music_off_outlined,
          text: 'Жанри',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.album_sharp,
          text: 'Збірки',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.photo_album_rounded,
          text: 'Композитори',
          iconForward: Icons.arrow_forward),
      MenuItem(
          icon: Icons.download,
          text: 'Викачані',
          iconForward: Icons.arrow_forward)
    ];
  }
}

class MenuItem {
  final IconData icon;
  final IconData iconForward;
  final String text;
  final bool isVisible;

  MenuItem(
      {required this.icon,
      required this.iconForward,
      required this.text,
      this.isVisible = true});
}
