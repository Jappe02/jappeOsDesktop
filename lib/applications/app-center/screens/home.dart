import 'package:flutter/material.dart';

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
        child: Stack(
          children: [
            Container( // Custom appBar
              height: 50,
              color: Colors.green,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
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
                  Positioned(
                    top: 10,
                    left: 200,
                    right: 200,
                    height: 30,
                    child: Container(
                      child: FlatButton(
                        hoverColor: Colors.black.withOpacity(0.0),
                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                       child: Stack(
                         children: [
                            Positioned(
                              left: 0,
                              height: 30,
                              width: 30,
                              child: Icon(Icons.search, color: Colors.white,),
                            ),
                            Positioned(
                              top: 5,
                              left: 60,
                              right: 40,
                              height: 30,
                              child: Text(
                                'Search for apps, games, extensions, and more!',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              height: 30,
                              width: 30,
                              child: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[800],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(0),
                            onPressed: () {

                            },
                            child: Container(
                              width: 180,
                              height: 35,
                              child: Stack(
                                children: [
                                  Positioned(
                                    width: 40,
                                    right: 0,
                                    child: Icon(Icons.account_circle, color: Colors.white, size: 35,),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 7,
                                    right: 45,
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
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
            Positioned( // Tab bar
              top: 50,
              left: 0,
              right: 0,
              height: 30,
              child: Container(
                color: Colors.green,
                child: ListView(
                  scrollDirection: Axis.horizontal,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
