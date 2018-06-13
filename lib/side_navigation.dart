import 'package:flutter/material.dart';

class SideNavigationPage extends StatefulWidget {
  SideNavigationPageState createState() => SideNavigationPageState();
}

class SideNavigationPageState extends State<SideNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(16.0),
              child: new Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      width: 40.0,
                      height: 40.0,
                      alignment: Alignment.topLeft,
                      margin: new EdgeInsets.only(top: 20.0),
                      child: new Image.asset(
                        "assets/images/close.png",
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.centerRight,
                    margin: new EdgeInsets.only(top: 20.0, left: 80.0),
                    child: new Text(
                      'JAHMAIKA',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'avenir_medium',
                        letterSpacing: 0.91,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              height: 2.0,
              decoration: new BoxDecoration(
                color: const Color(0xFF979797),
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(24.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFececec),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'SHOP',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      child: new Image.asset(
                        "assets/images/triangle_down.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.all(2.0),
              padding: new EdgeInsets.all(24.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFececec),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'FIND MATCH',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      child: new Image.asset(
                        "assets/images/triangle_right.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.all(2.0),
              padding: new EdgeInsets.all(24.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFececec),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'STORE LOCATOR',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      child: new Image.asset(
                        "assets/images/triangle_right.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.all(2.0),
              padding: new EdgeInsets.all(24.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFececec),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'ABOUT',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      child: new Image.asset(
                        "assets/images/triangle_right.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
