import 'package:flutter/material.dart';
import 'package:traffic_lightss/album_grid.dart';

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        //!without sizebox nothing happens, clear screen
        height: 300,
        width: 200,
        child: GridView.count(
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('data'),
                Text(''),
                Text('data'),
                ImageGrid(assetImage: AssetImage('assets/flower2.jpg')),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('data'),
                Text('dhfdxf'),
                Text('data'),
                ImageGrid(
                    assetImage: AssetImage(
                        'assets/flower3.jpg')), // !images are overflowed, cant find fit, to add widget Image is not possible
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('data'),
                Text('dhf'),
                Text('data'),
                ImageGrid(assetImage: AssetImage('assets/flower4.jpg')),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('data'),
                Text('dfhg'),
                Text('data'),
                ImageGrid(
                  assetImage: AssetImage('assets/flower5.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
