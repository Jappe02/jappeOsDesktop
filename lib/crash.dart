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
                'The jappe os shell has been crashed. More information below.\n\n\n\nIf this is the first time you see this, dont worry,\nif you see this screen showing up many times,\nplease contact us on: https://discord.gg/dRtU4HR,\nor: https://jappeos.blogspot.com/\n\n\n\n\nCrash: [application stopped with code: (0)]\n\n\nSHELL_UNEXPECTED_CLOSE\n\n\nHit [R] to restart...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red.withOpacity(1),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        //),
      ),
    );
  }
}
