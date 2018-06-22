import 'package:flutter/material.dart';
import 'FilterNew.dart';
import 'product_detail.dart';
import 'side_navigation.dart';
import 'shopping_cart.dart';

List<_ProductListTile> _tiles = <_ProductListTile>[
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "14.25",
  ),
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "14.25",
  ),
];

class ProductListPage extends StatefulWidget {
  ProductListPageState createState() => ProductListPageState();
}

class ProductListPageState extends State<ProductListPage> {
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
              height: 60.0,
              padding: new EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SideNavigationPage()),
                        );
                      },
                      child: new Container(
                        alignment: Alignment.topLeft,
                        child: new Image.asset(
                          "assets/images/menu_black.png",
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'JAHMAIKA',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'avenir_black',
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MyShoppingCartPage()),
                        );
                      },
                      child: new Container(
                        alignment: Alignment.centerRight,
                        child: new Image.asset(
                          "assets/images/shopping_bag_black.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 16.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFf9f9f9),
              ),
              padding: new EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'Filter',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'avenir_black',
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FilterPage()),
                      );
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(left: 16.0),
                      height: 10.0,
                      child: new Image.asset(
                        "assets/images/triangle_down.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Flexible(
              child: new GridView.count(
                childAspectRatio: .70,
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                children: _tiles.map((_ProductListTile item) {
                  return new GridTile(
                    child: new Container(
                      child: new GestureDetector(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              height: 150.0,
                              width: 80.0,
                              child: new Image.asset(
                                item.imageUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Container(
                              margin: new EdgeInsets.only(top: 20.0),
                              child: new Text(
                                item.itemName,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_medium',
                                  letterSpacing: 0.56,
                                ),
                              ),
                            ),
                            new Container(
                              margin: new EdgeInsets.only(top: 15.0),
                              child: new Text(
                                item.itemDescription,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_light',
                                  letterSpacing: 0.56,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ProductDetailPage()),
                          );
                        },
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

class _ProductListTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  _ProductListTile(this.imageUrl, this.itemName, this.itemDescription);
}
