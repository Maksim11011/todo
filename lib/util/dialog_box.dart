import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 36, 255, 113),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Ввод текса в заметку
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Написать...",
              ),
            ),

            //Кнопки -> save -> cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Кнопка Сохранить
                MyButton(text: 'Сохранить', onPressed: onSave),

                // Кнопка Отмены
                MyButton(text: 'Отменить', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
