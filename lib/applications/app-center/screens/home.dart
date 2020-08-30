import 'package:flutter/material.dart';
import 'package:simpaDesktop/components/system.dart';
import 'dart:io';

void main() {
  runApp(AppCenterHome());
}

class AppCenterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app center',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: 'App center'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container( // custom appbar
          height: 50,
          color: Colors.green,
          child: Positioned(
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {

                    },
                    child: Icon(Icons.menu, color: Colors.white,),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
