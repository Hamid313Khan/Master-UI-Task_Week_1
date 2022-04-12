import 'package:flutter/material.dart';
import 'package:ui_task/second_Screen.dart';
import 'package:ui_task/third_Screen.dart';
import 'customWIdgets/reusedtextfield.dart';
import 'fourth_screen.dart';
class First_Screen extends StatefulWidget {
  @override
  State<First_Screen> createState() => First_Screen_State();
}

class First_Screen_State extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 100, 20.0, 5.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Log in to Muz',
                style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Email Address',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ReusedTextField('monik@bork.wp.pl'),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ReusedTextField('password'),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FourthScreen()),
                    );

                },
                child: Text('Forgot password?'),
              ),
            ),
            SizedBox(height: 250.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(440,70),
                primary: Color(0xffe7cdc6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ThirdScreen()),
                );
              },

              child: Text('Log in',style: TextStyle(fontSize: 30.0),),

            )
          ],
        ),
      ),
    );
  }
}
