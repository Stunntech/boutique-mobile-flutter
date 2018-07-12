import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shipping_details.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

List<_MyShoppingCartTile> _tiles = <_MyShoppingCartTile>[
  new _MyShoppingCartTile(
    'assets/images/img.png',
    'Harajuku shirt ',
    'Clothing',
    '\$ 16.25',
  ),
  new _MyShoppingCartTile(
    'assets/images/img.png',
    'Harajuku  T Shirt',
    'Clothing',
    "\$ 34",
  ),
  new _MyShoppingCartTile(
      'assets/images/img_order.png', 'Novelty  Shirt', 'Clothing', "\$ 14.25"),
];

class MyShoppingCartPage extends StatefulWidget {
  MyShoppingCartPageState createState() => MyShoppingCartPageState();
}

class MyShoppingCartPageState extends State<MyShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(8.0),
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      margin: new EdgeInsets.only(top: 20.0),
                      padding: new EdgeInsets.all(8.0),
                      child: new Image.asset(
                        "assets/images/menu_black.png",
                      ),
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 25.0),
                    child: new Text(
                      'SHOPPING CART',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'avenir_black',
                        letterSpacing: 0.78,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: new Container(
                      alignment: Alignment.topRight,
                      margin: new EdgeInsets.only(top: 20.0),
                      padding: new EdgeInsets.all(8.0),
                      child: new Image.asset(
                        "assets/images/shopping_bag_black.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            new Expanded(
              child: new GridView.count(
                childAspectRatio: 2.0,
                crossAxisCount: 1,
                mainAxisSpacing: 6.0,
                children: _tiles.map((_MyShoppingCartTile item) {
                  return new GridTile(
                    child: new Container(
                      margin: new EdgeInsets.only(left: 16.0, right: 16.0),
                      child: new Column(
                        children: <Widget>[
                          new Expanded(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Expanded(
                                  child: new Container(
                                    height: 120.0,
                                    width: 80.0,
                                    child: new Image.asset(
                                      item.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                new Expanded(
                                  flex: 2,
                                  child: new Container(
                                    margin: new EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                          alignment: Alignment.topLeft,
                                          child: new Text(
                                            item.itemName,
                                            textAlign: TextAlign.center,
                                            style: new TextStyle(
                                              color: const Color(0xFF989898),
                                              fontSize: 21.0,
                                              fontFamily: 'avenir_medium',
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          margin:
                                              new EdgeInsets.only(top: 10.0),
                                          alignment: Alignment.centerLeft,
                                          child: new Text(
                                            item.itemType,
                                            textAlign: TextAlign.center,
                                            style: new TextStyle(
                                              color: const Color(0xFF989898),
                                              fontSize: 14.0,
                                              fontFamily: 'avenir_medium',
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          margin:
                                              new EdgeInsets.only(top: 30.0),
                                          alignment: Alignment.bottomLeft,
                                          child: new Text(
                                            item.itemCost,
                                            textAlign: TextAlign.center,
                                            style: new TextStyle(
                                              color: const Color(0xFF989898),
                                              fontSize: 14.0,
                                              fontFamily: 'avenir_medium',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            padding: new EdgeInsets.all(0.8),
                            decoration: new BoxDecoration(
                              color: const Color(0xFFe6e9ed),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // checkout button

            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ShippingDetailPage()),
                    );
                  },
                  child: Container(
                    padding: new EdgeInsets.all(16.0),
                    decoration: new BoxDecoration(
                      color: const Color(0xFF33b17c),
                    ),
                    child: new Text(
                      'Proceed to checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'avenir_medium',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MyShoppingCartTile {
  final String imageUrl;
  final String itemName;
  final String itemType;
  final String itemCost;

  _MyShoppingCartTile(
      this.imageUrl, this.itemName, this.itemType, this.itemCost);
}
