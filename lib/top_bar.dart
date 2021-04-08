import 'package:flutter/material.dart';

void main() {
  runApp(SimpaDesktop());
}

class SimpaDesktop extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desktop',
      home: Desktop(title: ''),
      theme: ThemeData(

        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
    );
  }
}

class Desktop extends StatefulWidget {
  Desktop({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyDesktopPageState createState() => _MyDesktopPageState();
}

class _MyDesktopPageState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
      ),
    );
  }
}
