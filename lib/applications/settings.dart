import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpa_desktop/components/consts.dart';

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
      // ignore: deprecated_member_use
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
        title: Text('Settings > WiFi'),
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
                      cursorColor: dsktpDesktopPrimaryColor,
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
                  tileColor: dsktpDesktopPrimaryColor,
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothPage()));
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppearancePage()));
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
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

class _BluetoothPageState extends State<BluetoothPage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},), backgroundColor: Colors.red, duration: const Duration(minutes: 5),),),);
    WidgetsBinding.instance.addPostFrameCallback(
      // ignore: deprecated_member_use
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
        title: Text('Settings > Bluetooth'),
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
                      cursorColor: dsktpDesktopPrimaryColor,
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
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WiFiPage()));
                  },
                ),
                ListTile(
                  tileColor: dsktpDesktopPrimaryColor,
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppearancePage()));
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
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

class _AppearancePageState extends State<AppearancePage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('An important JappeOS update is required, please install it as soon as possible!'), action: SnackBarAction(label: 'Install now!', onPressed: () {},), backgroundColor: Colors.red, duration: const Duration(minutes: 5),),),);
    WidgetsBinding.instance.addPostFrameCallback(
      // ignore: deprecated_member_use
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
        title: Text('Settings > Appearance'),
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
                      cursorColor: dsktpDesktopPrimaryColor,
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
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.wifi),
                  title: Text('Wi-Fi'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WiFiPage()));
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.bluetooth),
                  title: Text('Bluetooth'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BluetoothPage()));
                  },
                ),
                ListTile(
                  tileColor: dsktpDesktopPrimaryColor,
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.edit),
                  title: Text('Appearance'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.system_update),
                  title: Text('Updates'),
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(importantUpdateNotificationSnackBar);
                  },
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.language),
                  title: Text('Region & Language'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.account_circle),
                  title: Text('Accounts'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.speaker),
                  title: Text('Sound'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.power_settings_new),
                  title: Text('Power'),
                  onTap: () {},
                ),
                ListTile(
                  selectedTileColor: dsktpDesktopPrimaryColor,
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {},
                ),
              ],
            )),
          ),
          Positioned(
            left: 298,
            top: 0,
            bottom: 0,
            right: 0,
            child: Stack(
              children: [
                Positioned( // content
                  bottom: 0,
                  left: 2,
                  top: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white,
                    child: ListView( 
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          height: 500,
                          //color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 35,
                                child: Text(
                                  'SettingsTile',
                                  style: TextStyle(fontSize: 25,)
                                ),
                              ),
                              Container(height: 20,),
                              Positioned(
                                height: 20,
                                left: 0,
                                right: 0,
                                child: Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.settings, color: Colors.grey),
                                        Container(width: 20,),
                                        Text(
                                          'SettingsItem',
                                          style: TextStyle(fontSize: 15,)
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      height: 20,
                                      right: 0,
                                      child: Switch(
                                        value: true,
                                        onChanged: (value) {
                                          setState(() {
                                            print('SWITCH USED');
                                          });
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      height: 20,
                                      right: 150,
                                      child: Text(
                                        'ON/OFF [bool]',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(fontSize: 15,)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned( // separator
                  bottom: 0,
                  left: 0,
                  top: 0,
                  width: 2,
                  child: Container(
                    color: Colors.black12,
                  ),
                ),
              ],
            )
            
          )
        ],
      ),
    );
  }
}
