import 'package:flutter/material.dart';

class SiteDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: Image.asset(
              'card_background.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: const Text('Card title 1'),
            subtitle: Text(
              'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 1'),
              ),
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}