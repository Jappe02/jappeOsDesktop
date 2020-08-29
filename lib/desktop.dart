import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(SimpaDesktop());
}

class SimpaDesktop extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desktop',
      home: desktop(title: ''),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
    );
  }
}

class desktop extends StatefulWidget {
  desktop({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyDesktopPageState createState() => _MyDesktopPageState();
}



class _MyDesktopPageState extends State<desktop> {

  double top = 0;
  double left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/desktop/backgrounds/wallpaper2.jpg"), // desktop background image
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned( // Desktop icons
                      top: 30,
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              RaisedButton( // button to test the window manager
                                onPressed: () {},
                                child: Text('open an empty window!',
                                style: TextStyle(fontSize: 20,)),
                                color: Colors.blue,
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                          Row(

                          ),
                        ],
                      ),
                    ),
                    Container( // Window moving area & overlays
                      child: Stack(
                        children: <Widget>[
                          Stack( // Window moving area
                            children: <Widget>[
                              Container(
                                
                              ),
                            ],
                          ),
                          
                          Positioned( // Bottom dock
                            bottom: 0,
                            left: 200,
                            right: 200,
                        
                            height: 100,

                            child: Container(
                              child: dockContainer(
                                Container(
                                  child: Positioned(
                                    left: 0,
                                    child: Stack(
                                      children: <Widget>[
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ), 
                            ),
                          ),
                          Positioned( // Top bar
                            top: -10,
                            left: 0,
                            right: 0,
                            height: 40,
                            
                            child: Container(
                              child: topBarContainer(
                                Stack(
                                  children: <Widget>[
                                    Positioned( // top bar left side
                                      left: 0,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.apps, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),
                                          Container(width: 10,),
                                          Text(
                                            'Desktop-1',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white.withOpacity(0.8),
                                            ),
                                          ),
                                          Container(
                                            width: 25,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.arrow_drop_down_circle, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Positioned( // top bar right side
                                      right: 0,
                                      child: Row(
                                        children: <Widget>[

                                          Container( // more items
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.list, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),

                                          Container(width: 10,), // Adds a small space between buttons

                                          Container( // wifi status
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.wifi, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),

                                          Container( // volume status
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.volume_up, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),

                                          Container( // battery status
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.battery_unknown, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),

                                          Container( // keyboard layout
                                            width: 30,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Icon(Icons.keyboard, color: Colors.white.withOpacity(0.8)),
                                              onPressed: () {

                                              },
                                            ),
                                          ),
                                          
                                          Container( // time
                                            width: 50,
                                            child: FlatButton(
                                              padding: EdgeInsets.all(0),
                                              child: Text(
                                                '19:40',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white.withOpacity(0.8),
                                                ),
                                              ),
                                              onPressed: () {

                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ), 
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget topBarContainer (Widget child) {
  return ClipRRect (
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        height: MediaQuery
          .of(context)
          .size
          .height / 4,
        width: MediaQuery
          .of(context)
          .size
          .width / 1.2,
        color:Colors.black.withOpacity(0.5),
        child: child,
      ),
    ),
  );
}

Widget dockContainer (Widget child) {
  return ClipRRect (
    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        height: MediaQuery
          .of(context)
          .size
          .height / 4,
        width: MediaQuery
          .of(context)
          .size
          .width / 1.2,
        color:Colors.black.withOpacity(0.5),
        child: child,
      ),
    ),
  );
}

}
