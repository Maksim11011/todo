import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child: Column(children: [
          //Ввод текса в заметку
          TextField()

          //Кнопки -> save -> cancel
        ]),
      ),
    );
  }
}
