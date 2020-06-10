import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Image.asset('assets/dog.jpeg'),
            Image.asset('assets/dog2.jpeg'),
            Text('HELLO WORLD')
          ],
        ),
      )
    );
  }
}
