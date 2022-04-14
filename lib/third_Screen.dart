import 'package:flutter/material.dart';
import 'package:ui_task/second_Screen.dart';
import 'customWIdgets/picture_tile.dart';
import 'package:flutter/cupertino.dart';

class ThirdScreen extends StatefulWidget {
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://media.istockphoto.com/photos/lake-inzelenci-springsuppercarniolaslovenia-picture-id1094629964?k=20&m=1094629964&s=170667a&w=0&h=A6ehRv7bAOGYCIZ5-prjfEtgJCAmOA4NdriYM45QuKA=',
          fit: BoxFit.fill,
        ),
        Container(

          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 5.0),
          margin: const EdgeInsets.only(top: 250.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const Card(
                child: ListTile(
                  leading: Text(
                    'POLIN MUSEUM',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  trailing: Icon(Icons.place),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.place),
                  title: Text('This ia the most historical mesuem of all time'),
                ),
              ),
              SizedBox(
                height: 70,
                child: Card(
                  child: ListTile(
                      leading: const Icon(Icons.calendar_month_outlined),
                      title: const Text('Today Open'),
                      subtitle: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        initialDateTime: _dateTime,
                        onDateTimeChanged: (datetime) {
                          setState(
                            () {
                              // print(datetime);
                              _dateTime = datetime;
                            },
                          );
                        },
                      )),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Text(
                    'News',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
              const PictureTile(
                  'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  'This ia the most historical mesuem of all time',
                  'TORONTO'),
              const PictureTile(
                  'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  'This ia the most historical mesuem of all time',
                  'TORONTO'),
              ElevatedButton(
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
                    MaterialPageRoute(builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text(
                  'BUY TICKET',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
