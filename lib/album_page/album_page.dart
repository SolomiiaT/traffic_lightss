import 'package:flutter/material.dart';

import 'package:traffic_lightss/album_page/best_news.dart';
import 'package:traffic_lightss/album_page/first_grid.dart';
import 'package:traffic_lightss/album_page/more_interesting.dart';
import 'package:traffic_lightss/training_page/training_page.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              FirstText(),
              FirstGrid(),
              MoreInteresting(),
              //SizedBox(height: 100, width: 100, child: BestNews())
            ],
          ),
        ));
  }
}

class FirstText extends StatelessWidget {
  const FirstText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Огляд',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
