import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTestInput extends StatefulWidget {
  const MyTestInput({super.key});

  @override
  State<MyTestInput> createState() => _MyTestInputState();
}

class _MyTestInputState extends State<MyTestInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                inputFormatters: [
                  // FilteringTextInputFormatter.deny(RegExp(r'[v, z, o]')), // правила для инпута (конкрктно тут запрешен ввод єтих символов)
                  PhoneInputFormatter()
                ],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final digitRules = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');

    final initialSpeshialSimbolCount = newValue.selection.textBefore(newValue.text).replaceAll(RegExp(r'[\d]+'), '').length;

    final cursorPosition = newValue.selection.start - initialSpeshialSimbolCount;

    var finalPosition = cursorPosition;
    final digitOnlyCharts = digitRules.split('');
    var newString = <String>[];

    if (oldValue.selection.textInside(oldValue.text) == ' ') {
      digitOnlyCharts.removeAt(cursorPosition -1);
      finalPosition -= 2;
    }

    for (var i = 0; i < digitOnlyCharts.length; i++) {
      if (i == 3 || i == 6 || i == 8) {
        newString.add(' ');
        newString.add(digitOnlyCharts[i]);
        if (i <= cursorPosition) finalPosition +=1;
      }else{
        newString.add(digitOnlyCharts[i]);
      }
    }
    final result = newString.join('');
    return TextEditingValue(
        text: result,
        selection: TextSelection.collapsed(offset: finalPosition));
  }
}
