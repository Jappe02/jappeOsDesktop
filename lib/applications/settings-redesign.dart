import 'package:flutter/material.dart';
import 'package:simpa_desktop/components/cwidgets.dart';

/*void main() {
  runApp(MyApp());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WiFiPage(title: 'JappeOS'), 
    );
  }
}*/

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Jappbar(
            jleft: JAppMainSearchBox(

            ),
            jright: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white70,),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  right: 50,
                  child: IconButton(
                    icon: Icon(Icons.crop_square, color: Colors.white70,),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  right: 100,
                  child: IconButton(
                    icon: Icon(Icons.minimize, color: Colors.white70,),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
