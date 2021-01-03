import 'package:flutter/material.dart';
import 'package:simpa_desktop/components/system.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WiFiPage(title: 'Settings'),
    );
  }
}

// Wi-Fi
class WiFiPage extends StatefulWidget {
  WiFiPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WiFiPageState createState() => _WiFiPageState();
}

class _WiFiPageState extends State<WiFiPage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},), backgroundColor: Colors.red, duration: const Duration(minutes: 5),),),);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
              'NOTE: You are using an alpha version of JappeOS, some features might not be available.'),
          action: SnackBarAction(
            label: 'Close',
            onPressed: () {},
          ),
          backgroundColor: Colors.yellow[800],
          duration: const Duration(minutes: 5),
        ),
      ),
    );
  }

  final importantUpdateNotificationSnackBar = SnackBar(
    content: Text(
      'An important JappeOS update is required, please install it as soon as possible!',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    action: SnackBarAction(
      label: 'Install now!',
      onPressed: () {},
    ),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title + ' > Wi-Fi'),
        actions: <Widget>[
          Container(
            width: 400,
            // color: Colors.black,
            child: Stack(
              children: [
                Positioned( // search icon
                  top: 15,
                  left: 0,
                  width: 30,
                  height: 30,
                  child: Container(
                    child: Icon(
                      Icons.search
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned( // text field
                  top: 15,
                  left: 30,
                  right: 15,
                  height: 30,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 2.5,),
                    child: TextField(
                      cursorColor: sstmDsktpPrimaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search...',
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                  tileColor: sstmDsktpPrimaryColor,
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothPage()));
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppearancePage()));
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {},
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

// Bluetooth
class BluetoothPage extends StatefulWidget {
  BluetoothPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BluetoothPageState createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<WiFiPage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},), backgroundColor: Colors.red, duration: const Duration(minutes: 5),),),);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
              'NOTE: You are using an alpha version of JappeOS, some features might not be available.'),
          action: SnackBarAction(
            label: 'Close',
            onPressed: () {},
          ),
          backgroundColor: Colors.yellow[800],
          duration: const Duration(minutes: 5),
        ),
      ),
    );
  }

  final importantUpdateNotificationSnackBar = SnackBar(
    content: Text(
      'An important JappeOS update is required, please install it as soon as possible!',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    action: SnackBarAction(
      label: 'Install now!',
      onPressed: () {},
    ),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title + ' > Bluetooth'),
        actions: <Widget>[
          Container(
            width: 400,
            // color: Colors.black,
            child: Stack(
              children: [
                Positioned( // search icon
                  top: 15,
                  left: 0,
                  width: 30,
                  height: 30,
                  child: Container(
                    child: Icon(
                      Icons.search
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned( // text field
                  top: 15,
                  left: 30,
                  right: 15,
                  height: 30,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 2.5,),
                    child: TextField(
                      cursorColor: sstmDsktpPrimaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search...',
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WiFiPage()));
                  },
                ),
                ListTile(
                  tileColor: sstmDsktpPrimaryColor,
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppearancePage()));
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {},
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

// Appearance
class AppearancePage extends StatefulWidget {
  AppearancePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppearancePageState createState() => _AppearancePageState();
}

class _AppearancePageState extends State<WiFiPage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},), backgroundColor: Colors.red, duration: const Duration(minutes: 5),),),);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
              'NOTE: You are using an alpha version of JappeOS, some features might not be available.'),
          action: SnackBarAction(
            label: 'Close',
            onPressed: () {},
          ),
          backgroundColor: Colors.yellow[800],
          duration: const Duration(minutes: 5),
        ),
      ),
    );
  }

  final importantUpdateNotificationSnackBar = SnackBar(
    content: Text(
      'An important JappeOS update is required, please install it as soon as possible!',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    action: SnackBarAction(
      label: 'Install now!',
      onPressed: () {},
    ),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title + ' > Appearance'),
        actions: <Widget>[
          Container(
            width: 400,
            // color: Colors.black,
            child: Stack(
              children: [
                Positioned( // search icon
                  top: 15,
                  left: 0,
                  width: 30,
                  height: 30,
                  child: Container(
                    child: Icon(
                      Icons.search
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned( // text field
                  top: 15,
                  left: 30,
                  right: 15,
                  height: 30,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 2.5,),
                    child: TextField(
                      cursorColor: sstmDsktpPrimaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search...',
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15),),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WiFiPage()));
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothPage()));
                  },
                ),
                ListTile(
                  tileColor: sstmDsktpPrimaryColor,
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: sstmDsktpPrimaryColor,
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {},
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
