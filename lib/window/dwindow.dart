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
      home: WindowPage(),
    );
  }
}

class WindowPage extends StatefulWidget {
  WindowPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WindowPageState createState() => _WindowPageState();
}

const wTitlebarColor = Color(0xFF27AE60); /// --- Titlebar color: [The color of your titlebar on the top.] --- [you can change this]
const wIconColor = Color(0xFFFFFFFF); /// --- Window caption icon color: [The window caption button icon color.] --- [you can change this]
const wBackgroundColor = Color(0xFF000000); /// --- Window background color: [The window content background color.] --- [you can change this]
const String wWindowTitle = 'Window Title'; /// --- Window title: [The window title in the top left corner of your app window.] --- [you can change this]
const String wWindowIcon = 'lib/images/applications/icons/window_1_100.png'; /// --- Window icon: [The window icon in the top left corner of your app window.] --- [you can change this]

class _WindowPageState extends State<WindowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: wBackgroundColor, /// [DONT TOUCH]
        child: Stack(
          children: <Widget>[
            Positioned( /// Top bar [THINGS YOU DON'T WANT TO TOUCH, OR YOUR APP WILL BROKE!]
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
                            children: <Widget>[ /// [THINGS YOU DON'T WANT TO TOUCH, OR YOUR APP WILL BROKE!]
                              /// Additional button [Comment out if you dont need that! THIS IS THE ONLY THING YOU CAN EDIT:]
                              /*
                              Container( /// [You can edit the values only in this widget!]
                                width: 50,
                                height: 35,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(Icons.directions_bus, color: wIconColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(5),
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
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                ),
                              ),
                              */
                              
                              Container(
                                width: 10,
                              ),

                              // Minimize button
                              Container(
                                width: 50,
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
                                width: 50,
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
                                width: 50,
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

            // User area
            Positioned( /// --- App Content body: [the body of your window content, it's not recommended to change any properties of this object.] ---
              top: 40,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container( /// --- App Content: [the content of your app, includes buttons, textboxes, and other widgets. This is the place for your app GUI.] ---
                /// [HERE YOU CAN DO WHAT YOU WANT!]
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {

                      },
                      child: Text(
                        'JARI MANNONEN'
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
