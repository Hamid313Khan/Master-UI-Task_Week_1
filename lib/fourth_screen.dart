
import 'customWIdgets/picture_tile.dart';
import 'package:flutter/material.dart';
import 'customWIdgets/image_reused_card.dart';


class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}
class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(20.0),
        children: [
          const ListTile(
            leading: Icon(
              Icons.location_pin,
              color: Colors.black,
            ),
            title: Text('Warszawa', style: TextStyle(color: Colors.black)),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                label: const Text('Search'),
                prefixIcon: const
                Icon(Icons.search),
                fillColor: const Color(0xffEDEEEE),
                filled: true),
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 400.0),
                  height: 50,
                  child: const ImageReusedCard('images/image2.jpg', 'POLIN', '1987'),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 400.0),
                  height: 50,
                  child: const ImageReusedCard('images/image1.jpg', 'POLIN', '1987'),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 400.0),
                  height: 50,
                  child: const ImageReusedCard('images/image2.jpg', 'POLIN', '1987'),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 400.0),
                  height: 50,
                  child: const ImageReusedCard('images/image1.jpg', 'POLIN', '1987'),
                ),
              ],
            ),
          ),
          const Card(
            child: ListTile(
              leading: Text(
                'News And Exhibitions',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
          const PictureTile(
              'https://s3.india.com/travel/wp-content/uploads/2018/02/Satara-photo-2.jpg',
              'This ia the most historical mesuem of all time',
              'TORONTO'),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
