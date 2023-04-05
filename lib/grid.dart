import 'package:flutter/material.dart';

class AlbumGrid extends StatelessWidget {
  const AlbumGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      //TODO: this one physics is used to not have scroll on the widget
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: const [
        ImageGrid(assetImage: AssetImage('assets/build1.jpg')),
        ImageGrid(assetImage: AssetImage('assets/build2.jpg')),
        ImageGrid(assetImage: AssetImage('assets/build3.jpg')),
        ImageGrid(assetImage: AssetImage('assets/build4.jpg')),
      ],
    );
  }
}

class ImageGrid extends StatelessWidget {
  final AssetImage assetImage;

  const ImageGrid({
    required this.assetImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image(
        image: assetImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
