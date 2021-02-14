import 'package:flutter/material.dart';
import 'site_detail_card.dart';
import 'site_detail_button_bar.dart';
import 'site_detail_sensor_rows.dart';

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
    final SiteDetailPageArguments args =
        ModalRoute.of(context).settings.arguments;
    // Text(args.siteName),
    return Scaffold(
        appBar: AppBar(
          title: Text(args.siteName),
        ),
        body: ListView(children: [
          SiteDetailCard(),
          SiteDetailSensorButtonBar(),
          SiteDetailSensorRows(),
        ]));
  }
}
