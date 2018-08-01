import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/home_screens/top_collection.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

class StyleSelectionPage extends StatefulWidget {
  StyleSelectionPageState createState() => StyleSelectionPageState();
}

class StyleSelectionPageState extends State<StyleSelectionPage> {
  double _TEXT_SIZE_BUTTON;
  double _BUTTON_HEIGHT;
  double _BUTTON_WIDTH;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_LARGE;
  double _PADDING_SMALL;
  double _TEXT_SIZE_PERFECT_MATCH;
  double _TEXT_SIZE_YOUR_STYLE;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);

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
            _buildCustomAppBar(),
            _buildScreenBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return new Container(
      padding: new EdgeInsets.all(_PADDING_SMALL),
      decoration: new BoxDecoration(
        color: const Color(0x4D4a4a4a),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SideNavigationPage()),
              );
            },
            child: new Container(
              margin: new EdgeInsets.only(top: _MARGIN_SMALL),
              padding: new EdgeInsets.all(_PADDING_SMALL),
              child: new Image.asset(
                "assets/images/menu_white.png",
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
            child: new Text(
              'JAHMAIKA',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: _TEXT_SIZE_BUTTON,
                fontFamily: 'avenir_black',
                letterSpacing: 0.78,
              ),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyShoppingCartPage()),
              );
            },
            child: new Container(
              alignment: Alignment.topRight,
              margin: new EdgeInsets.only(top: _MARGIN_SMALL),
              padding: new EdgeInsets.all(_PADDING_SMALL),
              child: new Image.asset(
                "assets/images/shopping_bag_white.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenBody() {
    return new Expanded(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: new Text(
              "Let's find out your perfect match!",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: _TEXT_SIZE_PERFECT_MATCH,
                fontFamily: 'helvetica_neue_medium',
                letterSpacing: 0.69,
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top: _MARGIN_LARGE),
            child: new Text(
              "YOUR STYLE",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: _TEXT_SIZE_YOUR_STYLE,
                fontFamily: 'helvetica_neue_medium',
                letterSpacing: 0.83,
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_LARGE),
            child: new FlatButton(
                child: new Container(
                  alignment: Alignment.center,
                  width: _BUTTON_WIDTH,
                  height: _BUTTON_HEIGHT,
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
                      fontSize: _TEXT_SIZE_BUTTON,
                      fontFamily: 'helvetica_neue_medium',
                      letterSpacing: 2.57,
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
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_LARGE),
            child: new FlatButton(
                child: new Container(
                  alignment: Alignment.center,
                  width: _BUTTON_WIDTH,
                  height: _BUTTON_HEIGHT,
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
                      fontSize: _TEXT_SIZE_BUTTON,
                      fontFamily: 'helvetica_neue_medium',
                      letterSpacing: 2.57,
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
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_LARGE),
            child: new FlatButton(
                child: new Container(
                  alignment: Alignment.center,
                  width: _BUTTON_WIDTH,
                  height: _BUTTON_HEIGHT,
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
                      fontSize: _TEXT_SIZE_BUTTON,
                      fontFamily: 'helvetica_neue_medium',
                      letterSpacing: 2.57,
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

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _TEXT_SIZE_BUTTON = 12.0;
      _BUTTON_HEIGHT = 60.0;
      _BUTTON_WIDTH = 180.0;
      _MARGIN_SMALL = 20.0;
      _MARGIN_MEDIUM = 25.0;
      _PADDING_SMALL = 8.0;
      _MARGIN_LARGE = 40.0;
      _TEXT_SIZE_PERFECT_MATCH = 20.0;
      _TEXT_SIZE_YOUR_STYLE = 22.0;
    } else if (shortestSide >= 600) {
      _TEXT_SIZE_BUTTON = 24.0;
      _BUTTON_HEIGHT = 95.0;
      _BUTTON_WIDTH = 380.0;
      _MARGIN_SMALL = 30.0;
      _MARGIN_MEDIUM = 40.0;
      _MARGIN_LARGE = 60.0;
      _PADDING_SMALL = 12.0;
      _TEXT_SIZE_PERFECT_MATCH = 40.0;
      _TEXT_SIZE_YOUR_STYLE = 44.0;
    }
  }
}
