import 'package:flutter/material.dart';

void main() {
  runApp(Window());
}

class Window extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'window',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WindowPage(title: 'window'),
    );
  }
}

class WindowPage extends StatefulWidget {
  WindowPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WindowPageState createState() => _WindowPageState();
}

const wTitlebarColor = Color(0xFF27AE60);
const wIconColor = Color(0xFFFFFFFF);
const wBackgroundColor = Color(0xFF000000);
const String wWindowTitle = 'Window Title';
const String wWindowIcon = 'lib/images/applications/icons/window_1_100.png';

class _WindowPageState extends State<WindowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: wBackgroundColor,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,

              height: 40,
              
              child: Container(
                color: wTitlebarColor, // Titlebar color - default: Colors.grey[100]
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0, 
                      left: 10,
                      bottom: 0,

                      child: Stack(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // Window icon
                              Container(
                                width: 20,
                                height: 20,

                                child: Image.asset(wWindowIcon),
                              ),
                              Container(
                                width: 10,
                              ),
                              // Window title
                              Text(
                                wWindowTitle,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0, 
                      right: 10,
                      
                      child: Stack(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // Additional button [Comment out if you dont need that]
                              //Container(
                                //width: 55,
                                //height: 35,
                                //child: FlatButton(
                                  //padding: EdgeInsets.all(0),
                                  //child: Icon(Icons.directions_bus, color: wIconColor),
                                  //shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.only(
                                      //topRight: Radius.circular(0),
                                      //topLeft: Radius.circular(0),
                                      //bottomRight: Radius.circular(5),
                                      //bottomLeft: Radius.circular(5),
                                    //),
                                  //),
                                  //onPressed: () {

                                  //},
                                //),
                                //decoration: BoxDecoration(
                                  //color: Colors.black.withOpacity(0.5),
                                  //borderRadius: BorderRadius.only(
                                    //topRight: Radius.circular(0),
                                    //topLeft: Radius.circular(0),
                                    //bottomRight: Radius.circular(5),
                                    //bottomLeft: Radius.circular(5),
                                  //),
                                //),
                              //),
                              //
                              Container(
                                width: 10,
                              ),

                              // Minimize button
                              Container(
                                width: 55,
                                height: 35,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(Icons.minimize, color: wIconColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                ),
                              ),
                              // Maximize button
                              Container(
                                width: 55,
                                height: 35,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(Icons.crop_square, color: wIconColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                  ),
                                ),
                              ),
                              // Close button
                              Container(
                                width: 55,
                                height: 35,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(Icons.close, color: wIconColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(0),
                                  ),
                                ),
                              ),
                            ],
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
}
