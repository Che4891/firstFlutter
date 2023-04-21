import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTestButtons extends StatefulWidget {
  MyTestButtons({super.key});

  @override
  State<MyTestButtons> createState() => _MyTestButtonsState();
}

class _MyTestButtonsState extends State<MyTestButtons> {
  String text = "No button pressed";

  void clickButton() {
    setState(() {
          text = "The first button was pressed";
    print("Click for first button");

    });
  }

  void clickLongPress() {
    setState(() {
      print("Click for long time");
    text = "Button stuck";
    });
  }

  final style = ButtonStyle(
      // Стили кнопок (Обичних)
      backgroundColor: const MaterialStatePropertyAll(Colors.red), // фон
      foregroundColor: const MaterialStatePropertyAll(Colors.white), // цвет текста
      overlayColor: const MaterialStatePropertyAll(
          Color.fromARGB(69, 76, 175, 79)), // фон при колике
      shadowColor: const MaterialStatePropertyAll(
          Color.fromARGB(255, 235, 97, 196)), // цвет фона
      elevation: const MaterialStatePropertyAll(
          10), // ефект поднятия над поверзностью (с помощью тени достигаеться)
      padding: const MaterialStatePropertyAll(EdgeInsets.all(0)), // паддинги
      minimumSize: MaterialStatePropertyAll(Size(70, 30)), // Минимальный размер
      maximumSize:
          MaterialStatePropertyAll(Size(70, 70)), // Мaксимальный размер
      shape: MaterialStateProperty.all(// бордер и округление
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Color.fromARGB(255, 214, 250, 86)))),
      alignment: Alignment.topCenter,
      visualDensity: VisualDensity(horizontal: 3, vertical: 1));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green[300],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 20, decoration: TextDecoration.none),),
            SizedBox(height: 40,),
            ElevatedButton(
              clipBehavior: Clip.hardEdge, // Обрезает текст внутри
              onLongPress: clickLongPress,
              onPressed: clickButton,
              child: Text('In this button very long text'),
              style: style,
            ),
            OutlinedButton(
              onPressed: () {
                print('Click');
              },
              child: Text('Click 2'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 45, 26, 247))),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text(
                'Click',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            CupertinoButton.filled(
                child: Text('Cupertino'),
                onPressed: () {
                  print('Cupertino');
                }),
            CupertinoButton(
                child: Text('Cupertino'),
                onPressed: () {
                  print('Cupertino');
                }),
// you can adjust the width as you need
            Material(
              color: Colors.green[300],
              child: IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  splashRadius: 28,
                  color: Colors.red,
                  splashColor: Colors.amber,
                  highlightColor: Colors.blue,
                  onPressed: () {},
                  icon: const Icon(Icons.delete)),
            )
          ],
        ),
      ),
    );
  }
}
