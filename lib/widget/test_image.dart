import 'package:flutter/material.dart';
import 'package:flutter_application_777/resources/resources.dart';

class MyImageWidget extends StatefulWidget {
  const MyImageWidget({super.key});
  @override
  State<MyImageWidget> createState() => _MyImageWidgetState();
}

class _MyImageWidgetState extends State<MyImageWidget> {
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Container( color: Colors.white,
      width: double.infinity, height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image(image: AssetImage(AppImg.rozetka)),
             SizedBox(height: 30,),
             Image(image: AssetImage(AppImg.orderDetails)),
             SizedBox(height: 30,),
             Image(image: AssetImage(AppImg.git)),
          ],
        )
        
      )
    );
  }
}