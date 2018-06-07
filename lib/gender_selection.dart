import 'package:flutter/material.dart';
import 'style_selection.dart';

class GenderSelectionPage extends StatefulWidget {
  GenderSelectionPageState createState() => GenderSelectionPageState();
}

class GenderSelectionPageState extends State<GenderSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/bg_gender_selection.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Column(
          children: <Widget>[
            new CustomAppBar(),
            new StaticText(),
            new ButtonSection(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        color: const Color(0x4D4a4a4a),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Container(
              margin: new EdgeInsets.only(top: 20.0),
              padding: new EdgeInsets.all(8.0),
              child: new Image.asset(
                "assets/images/menu_white.png",
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 25.0),
            child: new Text(
              'JAHMAIKA',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontFamily: 'avenir_black',
              ),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Container(
              alignment: Alignment.topRight,
              margin: new EdgeInsets.only(top: 20.0),
              padding: new EdgeInsets.all(8.0),
              child: new Image.asset(
                "assets/images/shopping_bag_white.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StaticText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: 150.0),
      alignment: Alignment.center,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: new Text(
              "Let's find out your perfect match!",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: 'helvetica_neue_medium',
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top: 32.0),
            child: new Text(
              "SHOP FOR",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontFamily: 'helvetica_neue_medium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: 32.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: new FlatButton(
                child: new Container(
                  width: 100.0,
                  height: 50.0,
                  padding: new EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 15.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: new Text(
                    'MEN',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'helvetica_neue_medium',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  /*  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SignUpPage()),
                  );*/
                }),
          ),
          new Container(
            child: new FlatButton(
                child: new Container(
                  width: 100.0,
                  height: 50.0,
                  padding: new EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 15.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: new Text(
                    'WOMEN',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'helvetica_neue_medium',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new StyleSelectionPage()),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
