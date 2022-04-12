import 'package:flutter/material.dart';

class PictureTile extends StatelessWidget {
  PictureTile(this.image_value,this.text,this.place_text);
String image_value;
String text;
String place_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
        child: ListTile(
        leading:

        ClipRRect( borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
        ),
        child: Image.network(image_value),),
        title: Text(text),
        subtitle: Text(place_text)
        ),
        ),
      ],
    );

  }
}
