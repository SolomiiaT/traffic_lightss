import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';
import 'package:traffic_lightss/first_grid.dart';
import 'package:traffic_lightss/more_interesting.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const Buttons(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              FirstText(),
              FirstGrid(),
              SizedBox(height: 100, width: 100, child: MoreInteresting())
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
      Text('Огляд'),
    ]);
  }
}
