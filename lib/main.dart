import 'package:flutter/material.dart';

import './intake.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Intake> intakes = [
    Intake(
        id: 'M1',
        title: 'Beef Fried Rice',
        cal_amount: 480,
        date: DateTime.now()),
    Intake(
        id: 'M2',
        title: 'Chicken Noodle',
        cal_amount: 360,
        date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Calories Tracker'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Card(
                    child: Text('This is Chart Area'),
                    color: Colors.grey,
                    elevation: 3,
                  ),
                ),
                Column(
                  children: intakes.map((meat) {
                    return Card(
                      child: Text(meat.title),
                    );
                  }).toList(),
                ),
              ],
            )));
  }
}
