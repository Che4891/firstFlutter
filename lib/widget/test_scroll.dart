import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyScrollWidget extends StatelessWidget {
  MyScrollWidget({super.key});
  final controller = ScrollController(initialScrollOffset: 1050); 
  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (var i = 0; i < 200; i++) {
      final widget = Text(
        'Test text $i',
        style: TextStyle(fontSize: 25, decoration: TextDecoration.none),
      );
      items.add(widget);
    }
    return SingleChildScrollView(
      controller: controller, // управляет скролом например сейчас задано полодение не с начала ас 1/3 списка
      scrollDirection:Axis.vertical, // направление скролла (vertical это дефолтное згачение)
      physics: BouncingScrollPhysics(), // физика прокрутки ( например эта пружинит при финише)
      child: Column(
        children: items,
      ),
    );
  }
}
