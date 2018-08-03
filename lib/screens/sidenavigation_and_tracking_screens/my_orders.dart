import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

List<_MyOrderTile> _tiles = <_MyOrderTile>[
  new _MyOrderTile(
    'assets/images/img.png',
    'Brand Clothing Harajuku shirt Homme Hip Hop ',
    'ORDER PLACED',
    '\$ 16.25',
  ),
  new _MyOrderTile('assets/images/img_order.png',
      'Brand Clothing Harajuku shirt ', 'OUT FOR DELIVERY', "\$ 14.25"),
  new _MyOrderTile(
    'assets/images/img.png',
    'Brand Clothing Harajuku shirt ',
    'ORDER PLACED',
    '\$ 16.25',
  ),
  new _MyOrderTile('assets/images/img_order.png',
      'Brand Clothing Harajuku shirt ', 'OUT FOR DELIVERY', "\$ 14.25"),
];

class MyOrderPage extends StatefulWidget {
  MyOrderPageState createState() => MyOrderPageState();
}

class MyOrderPageState extends State<MyOrderPage> {
  double _TEXT_SIZE_ORDERS;
  double _TEXT_SIZE_ITEM_NAME;
  double _TEXT_SIZE_ITEM_COST;
  double _TEXT_SIZE_ITEM_STATUS;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_LARGE;
  double _PADDING_SMALL;
  double _LIST_ITEM_IMAGE_HEIGHT;
  double _LIST_ITEM_IMAGE_WIDTH;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);
    return new Scaffold(
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildCustomAppBar(),
            _buildOrderList(),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.all(_PADDING_SMALL),
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              //  Navigator.pop(context);
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SideNavigationPage()),
              );
            },
            child: new Container(
              margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
              padding: new EdgeInsets.all(_PADDING_SMALL),
              child: new Image.asset(
                "assets/images/menu_black.png",
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_LARGE),
            child: new Text(
              'MY ORDERS',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.black,
                fontSize: _TEXT_SIZE_ORDERS,
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
              margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
              padding: new EdgeInsets.all(_PADDING_SMALL),
              child: new Image.asset(
                "assets/images/shopping_bag_black.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridListItem(_MyOrderTile item) {
    return new Container(
      margin: new EdgeInsets.only(left: _MARGIN_SMALL, right: _MARGIN_SMALL),
      child: new Card(
        child: new Row(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                // alignment: Alignment.center,
                height: _LIST_ITEM_IMAGE_HEIGHT,
                width: _LIST_ITEM_IMAGE_WIDTH,
                child: new Image.asset(
                  item.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            new Expanded(
              flex: 2,
              child: new Container(
                //margin: new EdgeInsets.only(left: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                      child: new Text(
                        item.itemName,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: _TEXT_SIZE_ITEM_NAME,
                          fontFamily: 'helvetica_neue_bold',
                        ),
                      ),
                    ),
                    new Container(
                      child: new Text(
                        item.itemCost,
                        style: new TextStyle(
                          color: const Color(0xFF33b17c),
                          fontSize: _TEXT_SIZE_ITEM_COST,
                          fontFamily: 'helvetica_neue_bold',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Expanded(
                flex: 1,
                child: new Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    color: const Color(0xFFfafafa),
                  ),
                  // margin: new EdgeInsets.only(top: 25.0),
                  child: new Text(
                    item.itemStatus,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: const Color(0xFF33b17c),
                      fontSize: _TEXT_SIZE_ITEM_STATUS,
                      fontFamily: 'helvetica_neue_bold',
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderList() {
    return new Flexible(
      child: new GridView.count(
        childAspectRatio: 2.5,
        crossAxisCount: 1,
        mainAxisSpacing: 6.0,
        children: _tiles.map((_MyOrderTile item) {
          return new GridTile(
            child: _buildGridListItem(item),
          );
        }).toList(),
      ),
    );
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _LIST_ITEM_IMAGE_HEIGHT = 100.0;
      _LIST_ITEM_IMAGE_WIDTH = 50.0;
      _TEXT_SIZE_ORDERS = 12.0;
      _TEXT_SIZE_ITEM_NAME = 14.0;
      _TEXT_SIZE_ITEM_COST = 16.0;
      _TEXT_SIZE_ITEM_STATUS = 12.0;
      _MARGIN_SMALL = 10.0;
      _MARGIN_MEDIUM = 20.0;
      _MARGIN_LARGE = 25.0;
      _PADDING_SMALL = 8.0;
    } else if (shortestSide >= 600) {
      _LIST_ITEM_IMAGE_HEIGHT = 140.0;
      _LIST_ITEM_IMAGE_WIDTH = 70.0;
      _TEXT_SIZE_ORDERS = 24.0;
      _TEXT_SIZE_ITEM_NAME = 28.0;
      _TEXT_SIZE_ITEM_COST = 32.0;
      _TEXT_SIZE_ITEM_STATUS = 24.0;
      _MARGIN_SMALL = 15.0;
      _MARGIN_MEDIUM = 30.0;
      _MARGIN_LARGE = 37.0;
      _PADDING_SMALL = 12.0;
    }
  }
}

class _MyOrderTile {
  final String imageUrl;
  final String itemName;
  final String itemStatus;
  final String itemCost;

  _MyOrderTile(this.imageUrl, this.itemName, this.itemStatus, this.itemCost);
}
