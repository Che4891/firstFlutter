import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTestLayout extends StatelessWidget {
  const MyTestLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Сам занимает весь размер родителя и Потомки не могут быть больше. Других ограничкемй он не устанавливает
      color: Colors.green[300],
      child: Center(
        // Занимает весь размер родителя и нет ограничений для потомков (максимум не больше чем центр а минимум сколько угодно) ставит по центру
        child: Container(
          // Если нет размера занимает размер родителя. Если есть занимает тот что установили
          color: Colors.redAccent,
          width: 300,
          height: 550,
          child: Align(
            // Так же как и центр занимает размер весь размер родителя позичыя где будут потомки вымираем мы
            alignment: Alignment.bottomRight,
            child: ConstrainedBox(
              // Эта штука не делает ничего кроме того что задает размеры своему потомку (максимаотные и минимальные)
              constraints: const BoxConstraints(
                  maxHeight: 470, minHeight: 450, maxWidth: 230, minWidth: 150),
              child: Container(
                //UnconstrainedBox - разрешает снять все ограничения (позволит выйти за пределы екрана) с ошибками в консоле
                // OverflowBox - разрешает снять все ограничения без ошибок в консоле
                width: 300,
                height: 200,
                color: Colors.blue[200],
                child: Column(children: [
                  const FittedBox(
                      // уменьшает потомков так чтоб они помещались в него (например текст без переноса)
                      child: Text('Some Text i can use and use and use')),
                  Container(
                    color: Colors.grey,
                    width: 200,
                    height: 400,
                    child: Row(
                      children: [
                        // Flexible(child: child) - Агалог Expanded
                        Expanded( // Занимает все свободное место
                        flex: 1, // определяет прострагство что занимает контейгер
                          child: Container(
                            color: Colors.indigoAccent,
                            child:
                          const Text('This is test text', style: TextStyle(fontSize: 15, decoration: TextDecoration.none, color: Colors.white))),
                        ),
                        Expanded( // Если их два то занимает по половине
                        flex: 2,
                          child: Container(
                            color: Colors.blueGrey,
                            child: const Text('This is test text', style: TextStyle(fontSize: 15, decoration: TextDecoration.none, color: Colors.white)))
                          ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
