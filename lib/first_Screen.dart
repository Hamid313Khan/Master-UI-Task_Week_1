import 'package:flutter/material.dart';
import 'package:ui_task/second_Screen.dart';
import 'package:ui_task/third_Screen.dart';
import 'customWIdgets/reusedtextfield.dart';
import 'package:ui_task/customWIdgets/custom_botton.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => First_Screen_State();
}

class First_Screen_State extends State<FirstScreen> {
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
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Email Address',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const ReusedTextField('monik@bork.wp.pl'),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const ReusedTextField('password'),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text('Forgot password?'),
              ),
            ),
            const SizedBox(
              height: 250.0,
            ),
            CustomButton('Log in', ThirdScreen())
          ],
        ),
      ),
    );
  }
}
