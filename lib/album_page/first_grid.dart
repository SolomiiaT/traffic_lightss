import 'package:flutter/material.dart';

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'ОНОВЛЕНА ПІДБІРКА',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text('Новинки дня',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Text('Apple Music',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    )),
                Image(
                  image: AssetImage('assets/cat5.jpg'),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'СПЕЦІАЛЬНИЙ АНОНС',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    'Усе про нашу нову програму/nдля класичної музики', //!dont make it in two lines
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Center(
                  child: Image(
                      image: AssetImage('assets/flower2.jpg'),
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'ОНОВЛЕНА ПІДБІРКА',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text('Новинки дня',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Text('Apple Music',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    )),
                Image(
                    image: AssetImage('assets/flower4.jpg'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'ОНОВЛЕНА ПІДБІРКА',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text('Новинки дня',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Text('Apple Music',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    )),
                Image(
                    image: AssetImage('assets/flower5.jpg'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
