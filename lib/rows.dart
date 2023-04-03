import 'package:flutter/material.dart';

class Mediateka extends StatelessWidget {
  const Mediateka({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: const [
          Text(
            'MEDIATEKA',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  'https://www.pngall.com/wp-content/uploads/4/Thinking-Man-Transparent.png'))
        ],
      ),
    );
  }
}

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Row(
        children: const [
          Text('Недавно додані',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ],
      ),
    );
  }
}
