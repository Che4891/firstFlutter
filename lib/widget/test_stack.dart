import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // Куча - можно складывать один елемент на другой
        fit: StackFit.loose, // заполнение елемента
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.red,
            width: 350,
            height: 350,
          ),
          Container(
            color: Color.fromRGBO(33, 150, 243, 1),
            width: 250,
            height: 250,
          ),
          Container(
            color: Colors.green,
            width: 150,
            height: 150,
          ),
          Positioned(
            right: 120,
            top: 120,
            child: Container(
              color: Colors.yellow,
              width: 70,
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}
