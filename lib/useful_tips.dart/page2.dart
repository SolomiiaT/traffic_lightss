import 'package:flutter/material.dart';
import 'dart:ui';

class Page2 extends StatelessWidget {
  List<int> listItem = [
    0,
    1,
    2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: SafeArea(
            child: SizedBox(
                width: double.infinity,
                height: 320,
                child: ScrollConfiguration(
                    behavior: AppScrollBehavior(),
                    child: GridView(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 2.0,
                                crossAxisSpacing: 2.0,
                                crossAxisCount: 1,
                                childAspectRatio: 1),
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
      child: Column(
        children: const [
          Text('dfgkdrsj;otsile/zg,z/dlmgbzd'),
          Image(
            image: AssetImage('assets/cat5.jpg'),
            fit: BoxFit.cover,
          ),
        ],
      ),
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
