import 'package:flutter/material.dart';
import 'site_detail_card.dart';

class SiteDetailPageArguments {
  final String siteName;

  SiteDetailPageArguments(
    this.siteName,
  );
}

class SiteDetailPage extends StatelessWidget {
  static const routeName = '/site';

  @override
  Widget build(BuildContext context) {
    final SiteDetailPageArguments args = ModalRoute.of(context).settings.arguments;
    // Text(args.siteName),
    return Scaffold(
        appBar: AppBar(
          title: Text(args.siteName),
        ),
        body: ListView(children: [
           SiteDetailCard(),
          // SensorButtonBar(),
          // SensorTable(),
        ]));
  }
}
