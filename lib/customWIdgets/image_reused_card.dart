import 'package:flutter/material.dart';

class ImageReusedCard extends StatelessWidget {
  const ImageReusedCard(this.imageValue, this.museumName, this.museumHistory);
  final String imageValue;
  final String museumName;
  final String museumHistory;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,

      child: Card(
        margin: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imageValue),
            ),
            ListTile(
              title: Text(museumName),
              subtitle: Text(museumHistory),
            ),
          ],
        ),
      ),
    );
  }
}
