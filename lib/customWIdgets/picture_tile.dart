import 'package:flutter/material.dart';

class PictureTile extends StatelessWidget {
  const PictureTile(this.imageValue,this.text,this.placeText);
final String imageValue;
final String text;
final String placeText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
        child: ListTile(
        leading:

        ClipRRect( borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
        ),
        child: Image.network(imageValue),),
        title: Text(text),
        subtitle: Text(placeText)
        ),
        ),
      ],
    );

  }
}
