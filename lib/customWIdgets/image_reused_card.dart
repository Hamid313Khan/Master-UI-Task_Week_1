import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageReusedCard extends StatelessWidget {
  ImageReusedCard(this.image_value, this.museum_name, this.museum_history);
  String image_value;
  String museum_name;
  String museum_history;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,

      child: Card(
        margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Image.asset(image_value),
            ),
            ListTile(
              title: Text(museum_name),
              subtitle: Text(museum_history),
            ),
          ],
        ),
      ),
    );
  }
}
