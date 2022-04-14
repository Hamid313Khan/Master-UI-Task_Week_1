import 'package:flutter/material.dart';

class ReusedTextField extends StatelessWidget {
  const ReusedTextField(this.text);

 final String? text;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
    ),
            hintText: text,
          ),
        ),
      ],
    );
  }
}
