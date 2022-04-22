import 'package:flutter/material.dart';
import 'package:ui_task/second_Screen.dart';

class CustomButton extends StatelessWidget {
  CustomButton(this.buttonText, this.onPressed);
  String? buttonText;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(440, 70),
        primary: const Color(0xffe7cdc6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onPressed),
        );
      },
      child: Text(
        buttonText!,
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
