import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class BestNews extends StatelessWidget {
  const BestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewsList();
  }
}

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollSnapList(
        itemCount: 3,
        itemSize: 50,
        dynamicItemSize: true,
        onItemFocus: (index) {
          // code to execute when an item is focused
        },
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Column(children: const [
              ListTile(
                  leading: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image(image: AssetImage('assets/cat6.jpg'))),
                  title: Text('Vsczxyt czqdj'),
                  subtitle: Text('sdjfhsld'),
                  trailing: Icon(Icons.accessibility_sharp)),
              ListTile(
                  leading: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image(image: AssetImage('assets/cat5.jpg'))),
                  title: Text('Vsczxyt czqdj'),
                  subtitle: Text('sdjfhsld'),
                  trailing: Icon(Icons.accessibility_sharp)),
            ]),
          );
        });
  }
}
