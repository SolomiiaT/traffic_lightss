import 'package:flutter/material.dart';

class BestNews extends StatelessWidget {
  const BestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: const [FirstList(), FirstList()],
    );
  }
}

class FirstList extends StatelessWidget {
  const FirstList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        ListTile(
          leading: Image(image: AssetImage('assets/cat6.jpg')),
          title: Text('Місячне сяйво'),
          subtitle: Text('Луна'),
          trailing: Icon(Icons.directions_transit),
        ),
        ListTile(
            leading: Image(image: AssetImage('assets/cat6.jpg')),
            title: Text('Місячне сяйво'),
            subtitle: Text('Луна'),
            trailing: Icon(Icons.directions_transit)),
        ListTile(
            leading: Image(image: AssetImage('assets/cat6.jpg')),
            title: Text('Місячне сяйво'),
            subtitle: Text('Луна'),
            trailing: Icon(Icons.directions_transit)),
        ListTile(
            leading: Image(image: AssetImage('assets/cat6.jpg')),
            title: Text('Місячне сяйво'),
            subtitle: Text('Луна'),
            trailing: Icon(Icons.directions_transit))
      ],
    );
  }
}
