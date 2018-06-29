import 'package:flutter/material.dart';
import 'shopping_cart.dart';
import 'side_navigation.dart';

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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(8.0),
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
                      'MY ORDERS',
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new MyShoppingCartPage()),
                      );
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
            new Flexible(
              child: new GridView.count(
                childAspectRatio: 2.0,
                crossAxisCount: 1,
                mainAxisSpacing: 6.0,
                children: _tiles.map((_MyOrderTile item) {
                  return new GridTile(
                    child: new Container(
                      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                      child: new Card(
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                height: 80.0,
                                width: 80.0,
                                child: new Image.asset(
                                  item.imageUrl,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Container(
                                      child: new Text(
                                        item.itemName,
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontFamily: 'helvetica_neue_bold',
                                        ),
                                      ),
                                    ),
                                    new Container(
                                      child: new Text(
                                        item.itemCost,
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          color: const Color(0xFF33b17c),
                                          fontSize: 18.0,
                                          fontFamily: 'helvetica_neue_bold',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            new Expanded(
                                child: new Container(
                              alignment: Alignment.center,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFfafafa),
                              ),
                              // margin: new EdgeInsets.only(top: 25.0),
                              child: new Text(
                                item.itemDescription,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: const Color(0xFF33b17c),
                                  fontSize: 14.0,
                                  fontFamily: 'helvetica_neue_bold',
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyOrderTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;
  final String itemCost;

  _MyOrderTile(
      this.imageUrl, this.itemName, this.itemDescription, this.itemCost);
}
