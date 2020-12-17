import 'package:flutter/material.dart';
import 'package:simpa_desktop/components/system.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final updateRequiredSnackBar = SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 300,
            child: Scrollbar(
              child: ListView(
                children: [
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.wifi),
                    title: Text('Wi-Fi'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.bluetooth),
                    title: Text('Bluetooth'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.edit),
                    title: Text('Appearance'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.language),
                    title: Text('Region & Language'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.account_circle),
                    title: Text('Accounts'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.security),
                    title: Text('Security'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.speaker),
                    title: Text('Sound'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.power_settings_new),
                    title: Text('Power'),
                    onTap: () {},
                  ),
                  ListTile(
                    selectedTileColor: sstmDsktpPrimarColor,
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () {},
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
