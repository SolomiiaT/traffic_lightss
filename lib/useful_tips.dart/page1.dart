import 'dart:ui';

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  List<int> listItem = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('GridView'),
        ),
        body: SafeArea(
            child: SizedBox(
                width: double.infinity,
                height: 420,
                child: ScrollConfiguration(
                    behavior: AppScrollBehavior(),
                    child: GridView(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 2.0,
                                crossAxisSpacing: 2.0,
                                crossAxisCount: 3,
                                childAspectRatio: 0.36),
                        children: listItem
                            .map((title) => ItemWidget(
                                  title: "$title",
                                ))
                            .toList())))));
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: const Image(image: AssetImage('assets/cat5.jpg')),
    );
  }
}

// if this gridview used on flutter web need below class for scrolling
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
