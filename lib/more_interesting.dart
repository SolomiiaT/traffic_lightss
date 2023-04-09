import 'package:flutter/material.dart';

class MoreInteresting extends StatelessWidget {
  const MoreInteresting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: [
      const FirstSentence(),
      for (final item in _listOfItems()) ...[
        if (item.isVisible) ...[
          ListTile(
            title: Text(
              item.text,
              style: const TextStyle(color: Colors.red),
            ),
            trailing: Icon(
              item.iconForward,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
          Container(height: 1, color: Colors.grey)
        ]
      ],
    ]);
  }
}

class FirstSentence extends StatelessWidget {
  const FirstSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Більше цікавого',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        )
      ],
    );
  }
}

class _MenuItem {
  final IconData iconForward;
  final String text;
  final bool isVisible;

  _MenuItem(
      {required this.iconForward, this.isVisible = true, required this.text});
}

List<_MenuItem> _listOfItems() {
  return [
    _MenuItem(text: 'Огляд за категорією', iconForward: Icons.arrow_forward),  //! only firsl line is shown
    _MenuItem(text: 'Топ-чарти', iconForward: Icons.arrow_forward),
    _MenuItem(text: 'Релакс', iconForward: Icons.arrow_forward),
    _MenuItem(text: 'Головне', iconForward: Icons.arrow_forward),
    _MenuItem(text: 'Для дітей', iconForward: Icons.arrow_forward),
    _MenuItem(text: 'Кліпи', iconForward: Icons.arrow_forward),
    _MenuItem(text: 'Apple Music classic', iconForward: Icons.arrow_forward)
  ];
}
//!How put iconForward in every ListTile without neccesety to add in to lis above