import 'package:flutter/material.dart';
import 'package:traffic_lightss/training_page/additional_page1.dart';
import 'package:traffic_lightss/training_page/additional_page2.dart';
import 'package:traffic_lightss/training_page/additional_page3.dart';
import 'package:traffic_lightss/useful_tips.dart/page3.dart';

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
        actions: [
          PopupMenuButton(onSelected: (result) {
            if (result == 0) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdditionalPage1()));
            } else {
              if (result == 1) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AdditionalPage2()));
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AdditionalPage3()));
              }
            }
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 0,
                child: Text('Additional page 1'),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text('Additional page 2'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('Additional page 3'),
              ),
            ];
          })
        ],
      ),
      /*body: Row(
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
      ),*/
    );
  }
}

List<String> imageAssetPaths = const [
  'assets/cat3.jpg',
  'assets/cat4.jpg',
  'assets/cat2.jpg'
];


/*PopupMenuButton(onSelected: (result) {
            if (result == 0) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdditionalPage1()));
            } else {
              if (result == 1) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdditionalPage2())); 
            }
          } else {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const AdditionalPage3()));
          } */