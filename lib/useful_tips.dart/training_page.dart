import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              // code to execute when a menu item is selected
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'ViewingPage()',
                child: Text('Page 1'),
              ),
              PopupMenuItem<String>(
                value: 'option 2',
                child: Text('Option 2'),
              ),
              PopupMenuItem<String>(
                value: 'option 3',
                child: Text('Option 3'),
              ),
            ],
          )
        ],
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ScrollSnapList(
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
          ),
        ],
      ),
    );
  }
}

List<String> imageAssetPaths = const [
  'assets/cat3.jpg',
  'assets/cat4.jpg',
  'assets/cat2.jpg'
];
