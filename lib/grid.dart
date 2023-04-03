import 'package:flutter/material.dart';

class AlbumGrid extends StatelessWidget {
  const AlbumGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        //TODO: refactor this code, make all Images in a sigle style.
      //ok
        const Image(
            image: NetworkImage(
                'https://www.pngall.com/wp-content/uploads/4/Thinking-Man-Transparent.png')),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: const Image(
            image: AssetImage('assets/Pizza.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        const Image(
            image: AssetImage(
                'https://www.pngall.com/wp-content/uploads/4/Thinking-Man-Transparent.png')),
        const Image(
            image: AssetImage(
                'https://www.pngall.com/wp-content/uploads/4/Thinking-Man-Transparent.png'))
      ],
    );
  }
}
