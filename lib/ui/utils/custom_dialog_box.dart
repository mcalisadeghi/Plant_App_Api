import 'package:flutter/material.dart';

class CustomDialogBox {
  static void showMessage(
    BuildContext context,
    String title,
    String message,
    String buttonText,
    final VoidCallback onPressed,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
          ),
          content: Text(
            message,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonText,
              ),
            ),
          ],
        );
      },
    );
  }
}
