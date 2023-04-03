import 'package:flutter/material.dart';
import 'package:traffic_lightss/enums.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  ButtonColors selectColor = ButtonColors.blackButtonColor;
  Color buttonColor = Colors.black;
  Color buttonColor1 = const Color.fromARGB(255, 129, 221, 133);
  Color buttonColor2 = const Color.fromARGB(255, 195, 156, 156);
  Color buttonColor3 = const Color.fromARGB(255, 121, 44, 135);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 60,
      child: ButtonBar(children: [
        ElevatedButton(
            onPressed: () {
              if (selectColor == ButtonColors.greenButtonColor) {
                selectColor = ButtonColors.blackButtonColor;
              } else {
                selectColor = ButtonColors.greenButtonColor;
              }

              setState(() {});
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    selectColor == ButtonColors.greenButtonColor
                        ? buttonColor1
                        : buttonColor),
                side: MaterialStateProperty.all(const BorderSide(
                  color: Color.fromARGB(255, 58, 162, 24),
                  width: 6,
                  style: BorderStyle.none,
                )),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const CircleBorder()),
                elevation: MaterialStateProperty.all<double>(12),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(200, 200))),
            child: const Text('G',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 162, 24),
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        ElevatedButton(
            onPressed: () {
              if (selectColor == ButtonColors.whiteButtonColor) {
                selectColor = ButtonColors.blackButtonColor;
              } else {
                selectColor = ButtonColors.whiteButtonColor;
              }

              setState(() {});
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    selectColor == ButtonColors.whiteButtonColor
                        ? buttonColor2
                        : buttonColor),
                side: MaterialStateProperty.all(const BorderSide(
                  color: Color.fromARGB(255, 58, 162, 24),
                  width: 6,
                  style: BorderStyle.none,
                )),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const CircleBorder()),
                elevation: MaterialStateProperty.all<double>(12),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(200, 200))),
            child: const Text('W',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 162, 24),
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        ElevatedButton(
            onPressed: () {
              if (selectColor == ButtonColors.purpleButtonColor) {
                selectColor = ButtonColors.blackButtonColor;
              } else {
                selectColor = ButtonColors.purpleButtonColor;
              }

              setState(() {});
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    selectColor == ButtonColors.purpleButtonColor
                        ? buttonColor3
                        : buttonColor),
                side: MaterialStateProperty.all(const BorderSide(
                  color: Color.fromARGB(255, 58, 162, 24),
                  width: 6,
                  style: BorderStyle.none,
                )),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const CircleBorder()),
                elevation: MaterialStateProperty.all<double>(12),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(200, 200))),
            child: const Text('P',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 162, 24),
                    fontSize: 18,
                    fontWeight: FontWeight.bold)))
      ]),
    );
  }
}
