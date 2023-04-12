import 'package:flutter/material.dart';

import 'package:traffic_lightss/viewing_page/list_view.dart';

class ViewingPage extends StatefulWidget {
  const ViewingPage({super.key});

  @override
  State<ViewingPage> createState() => _ViewingPageState();
}

class _ViewingPageState extends State<ViewingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 12),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/page3');
              },
              child: const Text(
                'Змінити',
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ),
          )
        ],
      ),
      body: const ListOfSongs(),
    );
  }
}
