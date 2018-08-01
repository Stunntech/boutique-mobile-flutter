import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/home_screens/item_category_selection.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

class GenderSelectionPage extends StatefulWidget {
  GenderSelectionPageState createState() => GenderSelectionPageState();
}

class GenderSelectionPageState extends State<GenderSelectionPage> {
  double _TEXT_SIZE_BUTTON_TEXT;
  double _TEXT_SIZE_SHOP_FOR;
  double _TEXT_SIZE_PERFECT_MATCH;
  double _TEXT_SIZE_JAHMAIKA;
  double _BUTTON_WIDTH;
  double _BUTTON_HEIGHT;
  double _BUTTON_BORDER_WIDTH;
  double _PADDING_SMALL;
  double _MARGIN_SMALL;
  double _MARGIN_LARGE;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);

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
            _buildCustomAppBar(),
            _buildScreenBody(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // FlutterStatusbarcolor.setStatusBarColor(Colors.green);
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
            margin: new EdgeInsets.only(top: _MARGIN_SMALL),
            child: new Text(
              'JAHMAIKA',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: _TEXT_SIZE_JAHMAIKA,
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
            margin: new EdgeInsets.only(bottom: _MARGIN_LARGE),
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
            margin: new EdgeInsets.only(bottom: _MARGIN_LARGE),
            child: new Text(
              "SHOP FOR",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: _TEXT_SIZE_SHOP_FOR,
                fontFamily: 'helvetica_neue_medium',
                letterSpacing: 0.83,
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_SMALL),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    child: new FlatButton(
                        child: new Container(
                          alignment: Alignment.center,
                          width: _BUTTON_WIDTH,
                          height: _BUTTON_HEIGHT,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: new Border.all(
                              color: Colors.white,
                              width: _BUTTON_BORDER_WIDTH,
                            ),
                          ),
                          child: new Text(
                            'MEN',
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: _TEXT_SIZE_BUTTON_TEXT,
                              fontFamily: 'helvetica_neue_medium',
                              letterSpacing: 0.63,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new ItemCategorySelectionPage()),
                          );
                        }),
                  ),
                ),
                new Expanded(
                  child: new Container(
                    child: new FlatButton(
                        child: new Container(
                          alignment: Alignment.center,
                          width: _BUTTON_WIDTH,
                          height: _BUTTON_HEIGHT,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: new Border.all(
                              color: Colors.white,
                              width: _BUTTON_BORDER_WIDTH,
                            ),
                          ),
                          child: new Text(
                            'WOMEN',
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: _TEXT_SIZE_BUTTON_TEXT,
                              fontFamily: 'helvetica_neue_medium',
                              letterSpacing: 0.63,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new ItemCategorySelectionPage()),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _TEXT_SIZE_BUTTON_TEXT = 18.0;
      _TEXT_SIZE_SHOP_FOR = 24.0;
      _TEXT_SIZE_PERFECT_MATCH = 20.0;
      _TEXT_SIZE_JAHMAIKA = 12.0;
      _BUTTON_WIDTH = 100.0;
      _BUTTON_HEIGHT = 50.0;
      _BUTTON_BORDER_WIDTH = 2.0;
      _PADDING_SMALL = 8.0;
      _MARGIN_SMALL = 20.0;
      _MARGIN_LARGE = 24.0;
    } else if (shortestSide >= 600) {
      _TEXT_SIZE_BUTTON_TEXT = 36.0;
      _TEXT_SIZE_SHOP_FOR = 48.0;
      _TEXT_SIZE_PERFECT_MATCH = 40.0;
      _TEXT_SIZE_JAHMAIKA = 24.0;
      _BUTTON_WIDTH = 200.0;
      _BUTTON_HEIGHT = 80.0;
      _BUTTON_BORDER_WIDTH = 3.0;
      _PADDING_SMALL = 12.0;
      _MARGIN_SMALL = 30.0;
      _MARGIN_LARGE = 36.0;
    }
  }
}
