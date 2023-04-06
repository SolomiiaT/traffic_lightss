import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pink,
      body: Center(child: FlutterLogo()),
      bottomNavigationBar: Buttons(),
    );
  }
}
