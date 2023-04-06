import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: FlutterLogo()),
      bottomNavigationBar: Buttons(),
    );
  }
}
