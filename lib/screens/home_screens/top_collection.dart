import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/product_list_page/product_list.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

class TopCollectionPage extends StatefulWidget {
  TopCollectionPageState createState() => TopCollectionPageState();
}

class TopCollectionPageState extends State<TopCollectionPage> {
  double _TEXT_SIZE_JAHMAIKA;
  double _TEXT_SIZE_TOP_COLLECTION;
  double _TEXT_SIZE_DISCOVER;
  double _TEXT_SIZE_OFFER_TITLE;
  double _TEXT_SIZE_OFFER_DESCRIPTION;
  double _TEXT_SIZE_GET_THEM;
  double _MARGIN_SMALL;
  double _PADDING_SMALL;
  double _DISCOVER_BUTTON_WIDTH;
  double _DISCOVER_BUTTON_HEIGHT;
  double _BUTTON_WIDTH;
  double _BUTTON_GET_THEM_HEIGHT;
  double _BUTTON_GET_THEM_WIDTH;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: _buildTopSection(),
            ),
            new Expanded(
              child: _buildBottomSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new GestureDetector(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: new EdgeInsets.only(
                          left: _PADDING_SMALL, right: _PADDING_SMALL),
                      alignment: Alignment.center,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                            alignment: Alignment.center,
                            child: new Text(
                              'Christmas is back !',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: _TEXT_SIZE_OFFER_TITLE,
                                fontFamily: 'helvetica_neue_light',
                              ),
                            ),
                          ),
                          new Container(
                            alignment: Alignment.center,
                            child: new Text(
                              'Wide collection of santa themed clothes for your christmas party.',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: _TEXT_SIZE_OFFER_DESCRIPTION,
                                fontFamily: 'helvetica_neue_light',
                              ),
                            ),
                          ),
                          new Container(
                            child: new FlatButton(
                              child: new Container(
                                height: _BUTTON_GET_THEM_HEIGHT,
                                width: _BUTTON_GET_THEM_WIDTH,
                                alignment: Alignment.center,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  border: new Border.all(
                                    color: Colors.black,
                                    width: _BUTTON_WIDTH,
                                  ),
                                ),
                                child: new Text(
                                  'Get them!',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: _TEXT_SIZE_GET_THEM,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new ProductListPage()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ProductListPage()),
                      );
                    },
                  ),
                ),
                new Expanded(
                  child: new Container(
                    child: new Image.asset(
                      "assets/images/image_top_collection.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Expanded(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    child: new Image.asset(
                      "assets/images/image_top_collection_winter.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                new Expanded(
                  child: new GestureDetector(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: new EdgeInsets.only(
                          left: _PADDING_SMALL, right: _PADDING_SMALL),
                      alignment: Alignment.center,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                            alignment: Alignment.center,
                            child: new Text(
                              'Winter escape!',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: _TEXT_SIZE_OFFER_TITLE,
                                fontFamily: 'helvetica_neue_light',
                              ),
                            ),
                          ),
                          new Container(
                            alignment: Alignment.center,
                            child: new Text(
                              'Protect your dear ones from winter with our wide range of winter clothes.',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: _TEXT_SIZE_OFFER_DESCRIPTION,
                                fontFamily: 'helvetica_neue_light',
                              ),
                            ),
                          ),
                          new Container(
                            child: new FlatButton(
                              child: new Container(
                                height: _BUTTON_GET_THEM_HEIGHT,
                                width: _BUTTON_GET_THEM_WIDTH,
                                alignment: Alignment.center,
//
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  border: new Border.all(
                                    color: Colors.black,
                                    width: _BUTTON_WIDTH,
                                  ),
                                ),
                                child: new Text(
                                  'Get them!',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: _TEXT_SIZE_GET_THEM,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new ProductListPage()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ProductListPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/background_top_collection.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
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
                    //  Navigator.pop(context);
                  },
                  child: new Container(
                    margin: new EdgeInsets.only(top: _MARGIN_SMALL),
                    padding: new EdgeInsets.all(_PADDING_SMALL),
                    child: new Image.asset(
                      "assets/images/menu_white.png",
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
          ),
          new Expanded(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    'JAHMAIKA',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: _TEXT_SIZE_JAHMAIKA,
                      fontFamily: 'helvetica_neue_light',
                    ),
                  ),
                ),
                new Container(
                  alignment: Alignment.center,
                  child: new Text(
                    'Top collection 2017',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: _TEXT_SIZE_TOP_COLLECTION,
                      fontFamily: 'helvetica_neue_light',
                    ),
                  ),
                ),
                new Container(
                  child: new FlatButton(
                    child: new Container(
                      alignment: Alignment.center,
                      width: _DISCOVER_BUTTON_WIDTH,
                      height: _DISCOVER_BUTTON_HEIGHT,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.all(
                            new Radius.elliptical(40.0, 50.0)),
                        border: new Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: new Text(
                        'DISCOVER',
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: _TEXT_SIZE_DISCOVER,
                          fontFamily: 'helvetica_neue_light',
                          letterSpacing: 0.78,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {},
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
      _TEXT_SIZE_JAHMAIKA = 32.0;
      _TEXT_SIZE_TOP_COLLECTION = 18.0;
      _TEXT_SIZE_DISCOVER = 14.0;
      _TEXT_SIZE_OFFER_TITLE = 16.0;
      _TEXT_SIZE_OFFER_DESCRIPTION = 10.0;
      _TEXT_SIZE_GET_THEM = 12.0;
      _MARGIN_SMALL = 20.0;
      _PADDING_SMALL = 8.0;
      _DISCOVER_BUTTON_WIDTH = 150.0;
      _DISCOVER_BUTTON_HEIGHT = 40.0;
      _BUTTON_WIDTH = 1.0;
      _BUTTON_GET_THEM_HEIGHT = 30.0;
      _BUTTON_GET_THEM_WIDTH = 100.0;
    } else if (shortestSide >= 600) {
      _TEXT_SIZE_JAHMAIKA = 64.0;
      _TEXT_SIZE_TOP_COLLECTION = 36.0;
      _TEXT_SIZE_DISCOVER = 28.0;
      _TEXT_SIZE_OFFER_TITLE = 32.0;
      _TEXT_SIZE_OFFER_DESCRIPTION = 20.0;
      _TEXT_SIZE_GET_THEM = 24.0;
      _MARGIN_SMALL = 40.0;
      _PADDING_SMALL = 16.0;
      _DISCOVER_BUTTON_WIDTH = 300.0;
      _DISCOVER_BUTTON_HEIGHT = 75.0;
      _BUTTON_WIDTH = 2.0;
      _BUTTON_GET_THEM_HEIGHT = 50.0;
      _BUTTON_GET_THEM_WIDTH = 200.0;
    }
  }
}
