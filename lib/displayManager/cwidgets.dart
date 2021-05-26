
import 'package:flutter/material.dart';

// DESKTOP DIALOG

class Dialog extends StatefulWidget {
  final Widget child;

  Dialog({Key key, @required this.child}) : super(key: key);

  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              top: 30,
              bottom: 0,
              right: 0,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.black45.withOpacity(0.7),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.white30,
                      spreadRadius: 1,
                    )
                  ]),
              alignment: Alignment.topRight,
              height: 500,
              width: 300,
              
              // content
              child: Container(
                child: widget.child,
              ),
            ),
          )
        ],
      )
    ]);
  }
}

// JAPPEOS APP SIDEBAR BUTTON

class SettingsSidebar extends StatefulWidget {
  final Widget child;

  SettingsSidebar({Key key, @required this.child}) : super(key: key);

  _SettingsSidebarState createState() => _SettingsSidebarState();
}

class _SettingsSidebarState extends State<SettingsSidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 300,
      child: FlatButton(
        child: widget.child,
        onPressed: () {},
      ),
    );
  }
}