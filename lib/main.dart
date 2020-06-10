import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2/first_page.dart';
import 'package:flutter_bootcamp_2/second_page.dart';
import 'package:flutter_bootcamp_2/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Page One')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Page Two')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Page Three')),
        ],
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(index),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
