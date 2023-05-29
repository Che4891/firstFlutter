import 'package:flutter/material.dart';

class MyProductList extends StatelessWidget {
  const MyProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 10,
      itemExtent: 163,itemBuilder: (
        BuildContext context, int index
      ){
        return Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.2),),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Image(image: AssetImage('images/product.png'))
            ],
          ),
        ),);
      })
    );
  }
}