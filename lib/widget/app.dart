import 'package:flutter/material.dart';
import 'package:flutter_application_777/widget/test_CustomSingleChildLayout.dart';
import 'package:flutter_application_777/widget/test_buttons.dart';
import 'package:flutter_application_777/widget/test_image.dart';
import 'package:flutter_application_777/widget/test_input.dart';
import 'package:flutter_application_777/widget/test_layout.dart';
import 'package:flutter_application_777/widget/test_listView.dart';
import 'package:flutter_application_777/widget/test_scroll.dart';
import 'package:flutter_application_777/widget/test_stack.dart';
import 'package:flutter_application_777/widget/test_widget.dart';
import 'package:flutter_application_777/widget/user_profile.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: MyImageWidget(),
      // home: MyTestInput(),
      // home: MyTestButtons(),
      // home: MyListViewScroll(),
      //  home: MyScrollWidget(), // simple scroll widget
      // home: MyStackWidget(), // Stack - стопка
      // home: MyCustomSingleChild(), // test flexible layout
      // home: MyTestLayout(), // test how works layout
      // home: City(),  // test how works array
      // home: UserProfile(),
    );
  }
}