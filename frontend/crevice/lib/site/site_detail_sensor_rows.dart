import 'package:flutter/material.dart';

class SiteDetailSensorRows extends StatelessWidget {
  List<Container> buildRows(int n) {
    return List<Container>.generate(
        n,
            (index) => Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade100, width: 1),
              ),
            ),
            child: Row(children: [
              Expanded(
                child: Text('sensore 1', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('100.2 (+ 0.05)', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('2021/02/20 12:43:34', textAlign: TextAlign.center),
              )
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        child: Column(children: [
          Container(
              color: Colors.white,
              height: 30,
              child: Row(
                children: [
                  Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.contactless,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                                text: " Sensor",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                  Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.design_services,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                                text: " Measure",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                  Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.timelapse,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                                text: " Date",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                ],
              )),
          SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 100),
                  child: IntrinsicHeight(
                      child: Column(
                        children: buildRows(50),
                      ))))
        ]));
  }
}