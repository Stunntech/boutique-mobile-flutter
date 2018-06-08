import 'package:flutter/material.dart';
import 'top_collection.dart';
import 'item_category_selection.dart';
import 'my_orders.dart';
import 'shipping_details.dart';

class StyleSelectionPage extends StatefulWidget {
  StyleSelectionPageState createState() => StyleSelectionPageState();
}

class StyleSelectionPageState extends State<StyleSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/bg_style_selection.png"),
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
      margin: new EdgeInsets.only(top: 60.0),
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
              "YOUR STYLE",
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
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(top: 32.0),
            child: new FlatButton(
                child: new Container(
                  width: 170.0,
                  height: 50.0,
                  padding: new EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        new BorderRadius.all(new Radius.elliptical(40.0, 50.0)),
                    border: new Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: new Text(
                    'CASUAL',
                    style: new TextStyle(
                      color: Colors.black,
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
                        builder: (context) => new ShippingDetailPage()),
                  );
                }),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 40.0),
            child: new FlatButton(
                child: new Container(
                  width: 170.0,
                  height: 50.0,
                  padding: new EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        new BorderRadius.all(new Radius.elliptical(40.0, 50.0)),
                    border: new Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: new Text(
                    'CLASSICAL',
                    style: new TextStyle(
                      color: Colors.black,
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
                        builder: (context) => new ItemCategorySelectionPage()),
                  );
                }),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 40.0),
            child: new FlatButton(
                child: new Container(
                  width: 170.0,
                  height: 50.0,
                  padding: new EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        new BorderRadius.all(new Radius.elliptical(40.0, 50.0)),
                    border: new Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: new Text(
                    'SPORT',
                    style: new TextStyle(
                      color: Colors.black,
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
                        builder: (context) => new TopCollectionPage()),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
