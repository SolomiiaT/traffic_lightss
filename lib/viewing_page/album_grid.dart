import 'package:flutter/material.dart';

class AlbumGrid extends StatelessWidget {
  const AlbumGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 12),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Color.fromARGB(255, 37, 35, 35),
                  elevation: 5,
                  content: Text('Good choice!'),
                  duration: Duration(seconds: 2),
                ));
              },
              child:
                  const ImageGrid(assetImage: AssetImage('assets/build1.jpg'))),
          GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: const Text('You chose the second album'),
                          content: const Text('Are you sure?'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('yes')),
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('no'),
                            )
                          ],
                        ));
              },
              child:
                  const ImageGrid(assetImage: AssetImage('assets/build2.jpg'))),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: ElevatedButton(
                              //!what about color here
                              child: const Text(
                                  'If you want to continue, click here'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/selection');
                              }),
                        ),
                      );
                    });
              },
              child:
                  const ImageGrid(assetImage: AssetImage('assets/build3.jpg'))),
          GestureDetector(
            child: const ImageGrid(assetImage: AssetImage('assets/build4.jpg')),
            onTap: () {
              Navigator.pushNamed(context, '/selection');
            },
          ),
        ],
      ),
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
      child: Image(
        image: assetImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
