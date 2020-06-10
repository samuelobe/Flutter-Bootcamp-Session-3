import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('Test'),
              trailing: Text('Trailing'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Scaffold(
                    appBar: AppBar(),
                    body: Center(child: Text('Hello World')),
                  );
                }));
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('Test'),
              trailing: Text('Trailing'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('Test'),
              trailing: Text('Trailing'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('Test'),
              trailing: Text('Trailing'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('Test'),
              trailing: Text('Trailing'),
            ),
          ),
        ],
      )),
    );
  }
}
