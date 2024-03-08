import 'package:flutter/material.dart';

class UiAlertDialog extends StatelessWidget {
  final String? title;
  final String? message;

  const UiAlertDialog({
    super.key,
    this.title,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? ''),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(message ?? ''),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
