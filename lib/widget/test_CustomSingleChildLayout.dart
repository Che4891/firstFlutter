import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCustomSingleChild extends StatelessWidget {
  const MyCustomSingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          color: Colors.amberAccent,
          child: CustomSingleChildLayout(
            delegate: OneSingleChildLayoutDelegate(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.redAccent,
          child: CustomMultiChildLayout(
            delegate: OneMultiChildLayoutDelegate(),
            children: [
              LayoutId(
                  id: 1,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                  )),
              LayoutId(
                  id: 2,
                  child: Container(
                    color: Colors.greenAccent,
                  )),
              LayoutId(
                  id: 3,
                  child: Text(
                    'Izotova Eva',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 146, 16, 120),
                        decoration: TextDecoration.none),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}

class OneSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) => Size(constraints.biggest.width,
      300); // задаем размер самой обертке (у нас максимальная ширина и 300 -> высота)

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      BoxConstraints.tight(
          Size(200, 200)); // Задаем размер ребенку (ширинаю, высота)

  @override
  Offset getPositionForChild(
      Size size,
      Size
          childSize) // задаем позицию ребенку (по X, по Y) так же получаем параметры размер ролмтеоя и ребенка
  {
    final yOffset = size.height / 2 -
        childSize.height / 2; // расчитываем середину по вертикали
    final xOffset = size.width / 2 -
        childSize.width / 2; // расчитываем середину по горизонтали
    return Offset(xOffset, yOffset);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}

class OneMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) =>
      Size(constraints.biggest.width, 300);

  @override
  void performLayout(Size size) {
    // фунуция управляет детьми которые внутри (можем задать размер и позицию) принимает аргумент - размер родителя

    if (hasChild(1) && hasChild(2) && hasChild(3)) {
      // hasChild - проверяет наличие ребегка по индексу

      final sizeY = size.height - (size.height * 15) / 100;

      // каждому ребенку задаем резмер

      layoutChild(
          1,
          BoxConstraints.loose(
              size)); //loose - произвольный размер устанавливаеться потомками
      layoutChild(
          2,
          BoxConstraints.tight(Size(150,
              sizeY))); //tight- мануальный размер (задаеться в ручную ширина и высота)
      final thirdElement = layoutChild(3, BoxConstraints.loose(size));
      final centerX = size.width / 2 - thirdElement.width / 2;
      final centerY = size.height / 2;
      // задаем позици.
      positionChild(1, Offset(0, -50));
      positionChild(2, Offset(300, 100));
      positionChild(3, Offset(centerX, centerY));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
