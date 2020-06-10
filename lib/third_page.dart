import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  _launchURL() async {
    const url = 'https://www.petfinder.com/dog-breeds/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Text('White Dog', style: TextStyle(fontSize: 30)),
                  GestureDetector(
                      onTap: _launchURL,
                      child: Image.asset('assets/dog.jpeg')),
                ],
              ),
            ),
            Card(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Text('Brown Dog', style: TextStyle(fontSize: 30)),
                  Image.asset('assets/dog2.jpeg'),
                ],
              ),
            ),
            Card(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Text('Cool Dog', style: TextStyle(fontSize: 30)),
                  Image.asset('assets/dog3.jpeg'),
                ],
              ),
            ),
            Card(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Text('Black Dog', style: TextStyle(fontSize: 30)),
                  Image.asset('assets/dog4.jpeg'),
                ],
              ),
            ),
            Image.asset('assets/dog3.jpeg')
          ],
        ));
  }
}
