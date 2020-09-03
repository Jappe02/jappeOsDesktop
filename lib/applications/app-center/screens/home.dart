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
      debugShowCheckedModeBanner: false,
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
        child: Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Container( // custom appbar
            
            color: Colors.green,
            child: Align(
              alignment: Alignment.topRight,
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
                  Container(width: 10,),
                  Container(
                    child: Text(
                      'App center',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
