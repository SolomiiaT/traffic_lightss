import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollSnapList(
      itemSize: 50,
      onItemFocus: (index) {
        // code to execute when an item is focused
      },
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(imageAssetPaths[index]),
            fit: BoxFit.fill,
          ),
        );
      },
      itemCount: imageAssetPaths.length,
      dynamicItemSize: true,
      padding: const EdgeInsets.symmetric(horizontal: 5),
    );
  }
}

List<String> imageAssetPaths = const [
  'assets/cat3.jpg',
  'assets/cat4.jpg',
  'assets/cat2.jpg'
];
