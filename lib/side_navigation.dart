import 'package:flutter/material.dart';

List<_ShopItemTile> _tiles = <_ShopItemTile>[
  new _ShopItemTile(
    'assets/images/outfits.png',
    'Outfits',
  ),
  new _ShopItemTile(
    'assets/images/accesories.png',
    'Accesories',
  ),
  new _ShopItemTile(
    'assets/images/book.png',
    'Books',
  ),
  new _ShopItemTile(
    'assets/images/bag_category.png',
    'Bags',
  ),
  new _ShopItemTile(
    'assets/images/jewellery.png',
    'Jewellery',
  ),
  new _ShopItemTile(
    'assets/images/paintings.png',
    'Paintings',
  ),
];

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
            new Flexible(
              child: new GridView.count(
                childAspectRatio: 1.0,
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                children: _tiles.map((_ShopItemTile item) {
                  return new GridTile(
                    child: new Container(
                      // margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                      child: new Container(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                height: 150.0,
                                width: 100.0,
                                child: new Image.asset(
                                  item.imageUrl,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(
                                  item.itemName,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            /* new Expanded(
              child: new GridView.count(
                childAspectRatio: 2.0,
                crossAxisCount: 1,
                mainAxisSpacing: 2.0,
                children: _tiles.map((_ShopItemTile item) {
                  return new GridTile(
                    child: new Container(
                      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            // height: 50.0,
                            // width: 50.0,
                            child: new Image.asset(
                              item.imageUrl,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          new Container(
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: const Color(0xFFfafafa),
                            ),
                            // margin: new EdgeInsets.only(top: 25.0),
                            child: new Text(
                              item.itemName,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: const Color(0xFF33b17c),
                                fontSize: 16.0,
                                fontFamily: 'avenir_black',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),*/
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

class _ShopItemTile {
  final String imageUrl;
  final String itemName;

  _ShopItemTile(this.imageUrl, this.itemName);
}
