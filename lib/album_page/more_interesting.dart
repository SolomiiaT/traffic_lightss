import 'package:flutter/material.dart';

class MoreInteresting extends StatelessWidget {
  const MoreInteresting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const FirstSentence(),
          for (final item in _listOfItems()) ...[
            if (item.isVisible) ...[
              ListTile(
                title: Text(
                  item.text,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
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
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Більше цікавого',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
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
      {this.iconForward = Icons.arrow_forward,
      this.isVisible = true,
      required this.text});
}

List<_MenuItem> _listOfItems() {
  return [
    _MenuItem(
      text: 'Огляд за категорією',
    ),
    _MenuItem(text: 'Топ-чарти'),
    _MenuItem(text: 'Релакс'),
    _MenuItem(text: 'Головне'),
    _MenuItem(text: 'Для дітей'),
    _MenuItem(text: 'Кліпи'),
    _MenuItem(text: 'Apple Music classic')
  ];
}
