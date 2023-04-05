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
      children: const [
        //TODO: refactor this code, make all Images in a sigle style.
        //ok
       // GridSingleImage(image: AssetImage('assets/build2.jpg')),
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
      child: const Image(
        //TODO: here is always build4.jpg used, means you will always see the same image.
        //? you added assetImage property but never used it.
        //I used them above. When I delete the one in this code, the code doesnt work
        image: AssetImage('assets/build4.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
class GridSingleImage {
  final Image image;
  // can be used later to show or hide this item

  const GridSingleImage(
      {required this.image});
}
