import 'package:flutter/material.dart';

void main() {
  runApp(Crash());
}

class Crash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCrashPage(title: 'SHELL_CRASH'),
    );
  }
}

class MyCrashPage extends StatefulWidget {
  MyCrashPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCrashPageState createState() => _MyCrashPageState();
}

class _MyCrashPageState extends State<MyCrashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        //child: Positioned(
          //top: 10,
          //left: 10,
          //right: 10,
          child: Column(
            children: <Widget>[
              Text(
                'The jappe os shell has been crashed. More information below.\n\nLOL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red.withOpacity(1),
                ),
              ),
            ],
          ),
        //),
      ),
    );
  }
}
