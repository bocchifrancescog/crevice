import 'package:flutter/material.dart';


class SiteDetailSensorButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonBar(
          children: [
            ElevatedButton(
              child: Text('Sensor 1'),
              onPressed: () => {print('hello')},
            ),
            ElevatedButton(
              child: Text('Sensor 2'),
              onPressed: () => {print('hello')},
            ),
            ElevatedButton(
              child: Text('Sensor 3'),
              onPressed: () => {print('hello')},
            ),
          ],
        ),
      ),
    );
  }
}
