import 'dart:math';

import 'package:flutter/material.dart';
import 'side_navigation.dart';
import 'shopping_cart.dart';

List<_CategoryTile> _tiles = <_CategoryTile>[
  new _CategoryTile('assets/images/footwear.png', 'BEST IN FOOTWEAR',
      'Essential and Luxury footwear fashion'),
  new _CategoryTile(
      'assets/images/cloth.png', 'BEST IN CLOTHING', 'Luxury designer shirts'),
  new _CategoryTile('assets/images/watch.png', 'BEST IN WATCHES',
      'Essential and Luxury watch fashion'),
  new _CategoryTile('assets/images/bag.png', 'BEST IN BAGS',
      'Essential and Luxury bag fashion'),
  new _CategoryTile('assets/images/bag.png', 'BEST IN BAGS',
      'Essential and Luxury bag fashion'),
];

class ItemCategorySelectionPage extends StatefulWidget {
  ItemCategorySelectionPageState createState() =>
      ItemCategorySelectionPageState();
}

class ItemCategorySelectionPageState extends State<ItemCategorySelectionPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: new TopSection(),
            ),
            new Expanded(
              child: new GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 0.0,
                children: _tiles.map((_CategoryTile item) {
                  return new GridTile(
                    child: new Container(
                        color: Colors.white,
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                width: 130.0,
                                height: 100.0,
                                child: new Image.asset(
                                  item.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              new Container(
                                alignment: Alignment.center,
                                margin: new EdgeInsets.only(top: 8.0),
                                child: new Text(
                                  item.itemName,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                ),
                              ),
                              new Container(
                                alignment: Alignment.center,
                                margin: new EdgeInsets.only(top: 8.0),
                                child: new Text(
                                  item.itemDescription,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                ),
                              ),
                              new Container(
                                // margin: new EdgeInsets.only(top: 16.0, bottom: 8.0),
                                child: new FlatButton(
                                  child: new Container(
                                    padding: new EdgeInsets.only(
                                        left: 5.0,
                                        right: 5.0,
                                        top: 5.0,
                                        bottom: 5.0),
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      border: new Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: new Text(
                                      'SHOP NOW',
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.0,
                                        fontFamily: 'helvetica_neue_medium',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        )),
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

class _CategoryTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  _CategoryTile(this.imageUrl, this.itemName, this.itemDescription);
}

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/bg_select_item_type.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(8.0),
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
                      "assets/images/shopping_bag_white.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 85.0),
            padding: new EdgeInsets.only(left: 20.0, right: 20.0),
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
            margin: new EdgeInsets.only(top: 28.0, bottom: 16.0),
            child: new Text(
              "YOUR NEED",
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontFamily: 'helvetica_neue_medium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
