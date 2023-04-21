import 'package:flutter/material.dart';

class AdditionalPage1 extends StatelessWidget {
  const AdditionalPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 26, 200, 72)),
    );
  }
}

class NewsBest extends StatelessWidget {
  const NewsBest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(8),
        child: SizedBox(height: 300, width: 320, child: GridOneMore()));
  }
}

class GridOneMore extends StatelessWidget {
  const GridOneMore({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
            color: const Color.fromARGB(255, 167, 237, 93),
            child: const MusicTile1()),
        Container(
            height: 90,
            width: 90,
            color: Colors.deepOrange,
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.abc),
                  title: Text('dsfbhdf,k'),
                  subtitle: Text('dsvjfhsdkj'),
                  trailing: Icon(Icons.forward),
                )
              ],
            )),
      ],
    );
  }
}

class MusicTile1 extends StatelessWidget {
  const MusicTile1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: [
      const ListTile(
        isThreeLine: true,
        leading: Image(
          image: AssetImage('assets/cat6.jpg'),
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text('Тримаю'),
        subtitle: Text('7тіін'),
        trailing: Icon(Icons.forward),
      ),
      Container(height: 1, color: Colors.grey),
      const ListTile(
        leading: Image(
          image: AssetImage('assets/cat3.jpg'),
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text('Fellini'),
        subtitle: Text('Postman'),
        trailing: Icon(Icons.forward),
      ),
      Container(height: 1, color: Colors.grey),
      const ListTile(
        leading: Image(
          image: AssetImage('assets/cat5.jpg'),
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text('All of me'),
        subtitle: Text('Blinkie'),
        trailing: Icon(Icons.forward),
      ),
      Container(height: 1, color: Colors.grey),
      const ListTile(
        leading: Image(
          image: AssetImage('assets/Pizza.jpg'),
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text('Finally'),
        subtitle: Text('Jonas Blue'),
        trailing: Icon(Icons.forward),
      ),
    ]);
  }
}
