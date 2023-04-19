import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyListViewScroll extends StatelessWidget {
  const MyListViewScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

// Делает то что и предыдуший но + separatorBuilder (добавляет нудный виджет между виджетами )
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          print(index);

          return Container(
              height: 100,
              color: index % 2 == 0 ? Colors.blue : Colors.red,
              child: Center(
                  child: Text('${index + 1}',
                      style:
                          TextStyle(fontSize: 30, color: Colors.greenAccent))));
        },
        separatorBuilder: (context, index) => Container(
          height: 3,
          color: Colors.black,
        ),
      ),

// ListView.builder - подгружает количество которое влачит на екран + пара штук на запас (те что уже прошол удаляет)

      // body: ListView.builder(
      //     itemCount: 20, // ороничение по количеству пунктов (по дефолту не ограниченное количество)
      //     itemBuilder: (BuildContext context, int index) {
      //       print(index);

      //       return Container(
      //           height: 100,
      //           color: index % 2 == 0 ? Colors.blue : Colors.red,
      //           child: Center(
      //               child: Text('${index + 1}',
      //                   style: TextStyle(
      //                       fontSize: 30, color: Colors.greenAccent))));
      //     }),

// дефолтное состояние ( подгрудает елементы по порядку к которым доскролил )

      // body:ListView(
      //   children: [
      //     const Text("First item", style: TextStyle(
      //       height: 2, fontSize: 30, backgroundColor: Color.fromARGB(255, 175, 163, 163), decoration: TextDecoration.lineThrough
      //     ),),
      //     const Text("Second item", style: TextStyle(
      //       height: 2, fontSize: 30, backgroundColor: Color.fromARGB(255, 175, 163, 163), decoration: TextDecoration.lineThrough
      //     ),),
      //     const Text("Third item",  style: TextStyle(
      //       height: 2, fontSize: 30, backgroundColor: Color.fromARGB(255, 175, 163, 163), decoration: TextDecoration.lineThrough
      //     ),),
      //     const Text('Fours item', style: TextStyle(
      //       height: 2, fontSize: 30, backgroundColor: Color.fromARGB(255, 175, 163, 163), decoration: TextDecoration.lineThrough
      //     ),),
      //     Container(
      //       height: 250,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 250,
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       height: 250,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
    );
  }
}
