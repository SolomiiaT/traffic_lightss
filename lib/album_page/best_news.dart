import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class BestNews extends StatelessWidget {
  const BestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: 400,
        child: ScrollSnapList(
            itemCount: 3,
            itemSize: 50,
            dynamicItemSize: true,
            onItemFocus: (index) {
              // code to execute when an item is focused
            },
            itemBuilder: (context, index) {
              return SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    color: Colors.pink,
                    child: Column(children: [
                      Text('Best news $index'),
                      const Divider(
                        color: Colors.black,
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                      ),
                      Text('Subtitle $index'),
                      const Divider(
                        color: Colors.black,
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                      ),
                    ]),
                  ));
            }),
      ),
    );
  }
}
