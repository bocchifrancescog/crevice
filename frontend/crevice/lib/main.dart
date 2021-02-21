import 'package:crevice/login/login_page.dart';
import 'package:flutter/material.dart';
import 'site/site_page.dart';
import 'login/login_page.dart';
import 'site/site_detail_page.dart';
import 'alert/alert_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crevice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: LoginPage(),
      routes: {
        SiteDetailPage.routeName: (context) => SiteDetailPage(),
        LoginPage.routeName: (context) => LoginPage(),
      },

    );
  }
}

class RoutePage extends StatefulWidget {
  RoutePage({Key key}) : super(key: key);

  @override
  _RoutePage createState() => _RoutePage();
}

class _RoutePage extends State<RoutePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    SitePage(),
    AlertPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Alerts',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
