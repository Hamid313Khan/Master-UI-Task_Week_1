import 'package:flutter/material.dart';
class CustomListView extends StatelessWidget {
  const CustomListView(this.listImagevalue,this.listVewtext,this.placeValue);
  final String listVewtext;
  final String listImagevalue;
  final String placeValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),

                child: Image.asset(listImagevalue)),
            ListTile(
              title: Text(listVewtext,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              subtitle: Text(placeValue),
              trailing: const Icon(Icons.museum),
            ),
          ],),
      ),
    )
    ;
  }
}
