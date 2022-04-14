import 'package:flutter/material.dart';
import 'listviewcustom.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Scaffold(
          bottomNavigationBar: NavigationBar(
            height: 70,
            destinations: const[
               NavigationDestination(
                icon: Icon(
                  Icons.home,
                  size: 25,
                  color: Colors.grey,
                ),
                label: '',
              ),
               NavigationDestination(
                  icon: Icon(Icons.menu, size: 25, color: Colors.grey),
                  label: ''),
               NavigationDestination(
                  icon: Icon(Icons.settings, size: 25, color: Colors.grey),
                  label: ''),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(
              labelColor: Colors.grey,
              tabs: [
                Tab(text: 'Top Visited'),
                Tab(text: 'Art'),
                Tab(text: 'History'),
                Tab(text: 'Military'),
                Tab(text: 'Science'),
              ],
            ),
          ),
          body: Column(
            children: [
              const ListTile(
                leading: Text(
                  'Museum',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                trailing: Icon(Icons.museum),
              ),
              Container(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    CustomListView(
                        'images/image1.jpg', 'Very Great Place', 'TORONTO'),
                    CustomListView(
                        'images/image2.jpg', 'Very Great Place', 'TORONTO'),
                    CustomListView(
                        'images/image1.jpg', 'Very Great Place', 'TORONTO'),
                    CustomListView(
                        'images/image2.jpg', 'Very Great Place', 'TORONTO'),
                    CustomListView(
                        'images/image1.jpg', 'Very Great Place', 'TORONTO'),
                    CustomListView(
                        'images/image2.jpg', 'Very Great Place', 'TORONTO'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
