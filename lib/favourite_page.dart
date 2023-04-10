import 'package:flutter/material.dart';
import 'package:traffic_lightss/button_nav_bar.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: MyHomePage(title: 'title'),
      bottomNavigationBar: Buttons(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = -1, previousIndex = 0;

  double getAnimationValue(int currentIndex, int widgetIndex, int previousIndex,
      {bool begin = true}) {
    if (widgetIndex == currentIndex) {
      return begin ? 0.9 : 1;
    } else {
      return begin ? 1 : 0.9;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) {
                setState(() {
                  if (currentIndex != -1) {
                    previousIndex = currentIndex;
                  }
                  currentIndex = index;
                });
              },
              itemBuilder: (_, widgetIndex) {
                return (currentIndex != -1 &&
                        (previousIndex == widgetIndex ||
                            widgetIndex == currentIndex))
                    ? TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 400),
                        tween: Tween<double>(
                          begin: getAnimationValue(
                            currentIndex,
                            widgetIndex,
                            previousIndex,
                          ),
                          end: getAnimationValue(
                            currentIndex,
                            widgetIndex,
                            previousIndex,
                            begin: false,
                          ),
                        ),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: const Image(
                              image: AssetImage('assets/cat1.jpg'),
                              semanticLabel: 'hello',
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      )
                    : Transform.scale(
                        // this is used when you want to disable animation when initialized the page
                        scale:
                            (widgetIndex == 0 && currentIndex == -1) ? 1 : 0.9,
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Card${widgetIndex + 1}",
                                style: const TextStyle(fontSize: 30),
                              ),
                              Text(
                                "$widgetIndex >> Widget Index << $widgetIndex",
                                style: const TextStyle(fontSize: 22),
                              ),
                              Text(
                                "$currentIndex >> Init Index << $currentIndex",
                                style: const TextStyle(fontSize: 22),
                              ),
                              Text(
                                "$previousIndex >> Previous Index << $previousIndex",
                                style: const TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
