import 'dart:wasm';

import 'package:flutter/material.dart';
//import 'package:simpa_desktop/components/consts.dart';


// DESKTOP DIALOG

class Dialog extends StatefulWidget {
  final Widget child;

  Dialog({Key key, @required this.child}) : super(key: key);

  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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

// JAPPEOS SETTINGS SIDEBAR BUTTON

class SettingsSidebarButton extends StatefulWidget {
  final IconData jicon;
  final String jtext;

  SettingsSidebarButton({Key key, @required this.jicon, @required this.jtext}) : super(key: key);

  _SettingsSidebarButtonState createState() => _SettingsSidebarButtonState();
}

class _SettingsSidebarButtonState extends State<SettingsSidebarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 300,
      child: FlatButton(
        child: Row(
          children: [
            Icon(
              widget.jicon,
            ),
            Text(
              widget.jtext,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
      ),
    );
  }
}

// JAPPEOS SETTINGS PAGE

// coming soon...

// JAPPEOS LAUNCHER ITEM BUTTON

class LauncherItemButton extends StatefulWidget {
  final String jicon;
  final String jtext;

  LauncherItemButton({Key key, @required this.jicon, @required this.jtext}) : super(key: key);

  _LauncherItemButtonState createState() => _LauncherItemButtonState();
}

class _LauncherItemButtonState extends State<LauncherItemButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      child: FlatButton(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 90,
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.jicon), // icon file
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 20,
              padding: EdgeInsets.only(
                left: 1,
                right: 1,
                bottom: 1,
              ),
              child: Text(
                widget.jtext, // source label
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          //side: BorderSide(color: Colors.red)
        ),
        hoverColor: Colors.black.withOpacity(0.2),
        onPressed: () {},
      ),
    );
  }
}


// JAPPEOS APPBAR

class Jappbar extends StatefulWidget {
  final Widget jleft;
  final Widget jcenter;
  final Widget jright;

  Jappbar({Key key, @optionalTypeArgs this.jleft, @optionalTypeArgs this.jcenter, @optionalTypeArgs this.jright}) : super(key: key);

  _JappbarState createState() => _JappbarState();
}

class _JappbarState extends State<Jappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.black87,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            width: 310,
            top: 5,
            bottom: 5,
            child: widget.jleft,
          ),
          Center(
            child: Container(
              width: 300,
              height: 45,
              child: widget.jcenter,
            ),
          ),
          Positioned(
            right: 10,
            width: 500,
            top: 5,
            bottom: 5,
            child: widget.jright,
          ),
        ],
      ),
    );
  }
}

// JAPPEOS APP-MAIN-SEARCH-BAR

class JAppMainSearchBox extends StatefulWidget {
  final String jbgtext;

  JAppMainSearchBox({Key key, @optionalTypeArgs this.jbgtext}) : super(key: key);

  _JAppMainSearchBoxState createState() => _JAppMainSearchBoxState();
}

class _JAppMainSearchBoxState extends State<JAppMainSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.red,
      ),
    );
  }
}
