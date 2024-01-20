import 'package:flutter/material.dart';
import 'package:todo_app/components/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new Task',
              ),
            ),

            // Buttons (save) & (cancel)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save buttons
                Buttons(text: 'Save', onPressed: () {}),

                const SizedBox(width: 4),

                // Cancel buttons
                Buttons(text: 'Cancel', onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
