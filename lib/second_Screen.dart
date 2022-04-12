
import 'package:flutter/material.dart';
import 'customWIdgets/image_reused_card.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: '',),
            NavigationDestination(icon: Icon(Icons.menu), label: ''),
            NavigationDestination(icon: Icon(Icons.settings), label: ''),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey.shade700),
        body: Column(
          children: [
            Container(
              child: ListTile(
                leading: Text(
                  'Museum',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                trailing: Icon(Icons.museum),
              ),
            ),
            Column(
              children: [
                ImageReusedCard('images/image1.jpg','POLIN','1987'),
                SizedBox(
                  height: 10.0,
                ),
                ImageReusedCard('images/image2.jpg','GERMAN','1966'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
