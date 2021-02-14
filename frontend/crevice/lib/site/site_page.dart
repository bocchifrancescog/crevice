import 'package:flutter/material.dart';
import 'site_detail_page.dart';

class SitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Site n1'),
            onTap: () => {
              Navigator.pushNamed(
                context,
                SiteDetailPage.routeName,
                arguments: SiteDetailPageArguments('Site n1'),
              )
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Site n2'),
            onTap: () => {
              Navigator.pushNamed(
                context,
                SiteDetailPage.routeName,
                arguments: SiteDetailPageArguments('Site n2'),
              )
            },
          ),
        ),
      ],
    );
  }
}
