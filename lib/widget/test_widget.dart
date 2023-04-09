import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// ШАГ 1:  Это технический класс чтоб сделать массив обектов потом TechnicalClass - сделан обектом что хранит строки. которые мы потом заполним
class TechnicalClass {
  final String name;
  final String city;
  final icon;

  TechnicalClass({
    required this.name,
    required this.city,
    required this.icon,
  });
}

class City extends StatelessWidget {
  City({super.key});
  //ШАГ 2: Cоздаем массив из обектов (ШАГ 1) и задаем значение строкам
  List textArray = [
    TechnicalClass(name: "Anton", city: 'Lviv', icon: Icons.face_outlined),
    TechnicalClass(name: "Eva", city: 'Lviv', icon: Icons.face_2_sharp),
    TechnicalClass(name: "Sargyk", city: 'Lviv', icon: Icons.masks_outlined),
    TechnicalClass(name: "Inna", city: 'Kryvchytsi', icon: Icons.face_3_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    // ШАГ 3: создаем массив виджетов dataArray в который складываем textArray (ШАГ 2)
    List<Widget> dataArray =
        textArray.map((item) => TextRow(data: item)).toList();

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: Column(

            // ШАГ 5: показываем массив елементов что украсили в ШАГ 4
            mainAxisAlignment: MainAxisAlignment.center,
            children: dataArray),
      ),
    );
  }
}

class TextRow extends StatelessWidget {
  // ШАГ 4: Берем елементы из TechnicalClass ( ШАГ-1 ) и наводим красоту
  final TechnicalClass data;

  TextRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Text(
              data.name,
              style: const TextStyle(
                  color: Color.fromARGB(255, 85, 6, 212), fontSize: 30),
            ),
            const SizedBox(width: 10),
            Icon(data.icon, color: Color.fromARGB(255, 85, 6, 212)),
            const Spacer(),
            Text(
              data.city,
              style: const TextStyle(
                  color: Color.fromARGB(255, 17, 9, 133), fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
