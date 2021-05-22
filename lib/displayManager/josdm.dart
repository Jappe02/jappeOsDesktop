// NOTE: the display manager ui (in this file) will be improved later! Because this doesn't look good YET.
// This file was made in 2020.


import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: LoginPage(title: ''),
      theme: ThemeData(

        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,

              child: Image.asset(
                "lib/images/desktop/backgrounds/wallpaper1.jpg",
                fit: BoxFit.cover,
              ),
            ),

            // Top bar begins here
            Positioned(
              top: 0,
              left: 0,
              right: 0,

              height: 30,

              child: Container(
                child: topBarContainer(
                  Container(
                    child: Positioned(
                      left: 0,
                      child: Stack(
                        children: <Widget>[
                          IconButton(
                            iconSize: 5.0,
                            icon: Icon(Icons.power_settings_new),
                            tooltip: 'Shutdown',
                            onPressed: () {

                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Top bar ends here


            // User list begins here        
            Positioned(
              top: 50,
              left: 50,
              bottom: 50,
              width: 500,

              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                    
                      child: ListTile (
                      hoverColor: Colors.black,
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: AssetImage('lib/images/applications/account/default_avatar.png'),
                      ),
                      title: Text(
                        'JUser01'
                      ),
                      subtitle: Text(
                        'defaultuser'
                      ),
                      onTap: () {}
                      ),
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 3, blurRadius: 5),
                        ],
                      ),
                   ),
                    Container(
                      height: 10,
                    ),
                  Container(
                    
                      child: ListTile (
                      hoverColor: Colors.black,
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage('lib/images/applications/account/default_avatar.png'),
                      ),
                      title: Text(
                        'Guest'
                      ),
                      subtitle: Text(
                        'use as a guest'
                      ),
                      onTap: () {}
                      ),
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 3, blurRadius: 5),
                        ],
                      ),
                   ),
                   Container(
                      height: 10,
                   ),
                 ],
                ),
              ),
            ),
            // User list ends here
            
            // User login box begins here
            Positioned(
              top: 70,
              right: 50,
              bottom: 70,
              width: 500,

              child: Container(
                child: froastedContainer(
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.green,
                          backgroundImage: AssetImage('lib/images/applications/account/default_avatar.png'),
                        ),
                        Text(
                          'JUser01',
                          style: TextStyle(
                            fontSize: 25
                          ),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                            ),
                            // ignore: missing_return
                            validator: (String value) {
                              if (value.trim().isEmpty) {
                                return 'Password is required';
                              }
                            },
                          ),
                        ),
                        Text(
                          'Hit [ENTER] to submit.',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                        
                      
                    
                  ),
                ),
              ),
            ),
            
            // User login box ends here
          ],
        ),
      ),
    );
  }

Widget froastedContainer (Widget child) {
  return ClipRRect (
    borderRadius: BorderRadius.circular(10.0),
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
        color:Colors.white.withOpacity(0.3),
        child: child,
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

}
