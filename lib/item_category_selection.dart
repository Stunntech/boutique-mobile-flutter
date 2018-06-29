import 'dart:math';

import 'package:flutter/material.dart';
import 'side_navigation.dart';
import 'shopping_cart.dart';
import 'style_selection.dart';
import 'top_collection.dart';

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
                childAspectRatio: 0.9,
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
                                    fontSize: 12.0,
                                    letterSpacing: 0.2,
                                    fontFamily: 'avenir_light',
                                  ),
                                ),
                              ),
                              new Container(
                                alignment: Alignment.center,
                                margin: new EdgeInsets.only(top: 8.0),
                                padding:
                                    new EdgeInsets.only(left: 8.0, right: 8.0),
                                child: new Text(
                                  item.itemDescription,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 11.0,
                                    letterSpacing: 0.25,
                                    fontFamily: 'avenir_heavy',
                                  ),
                                ),
                              ),
                              new Container(
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
                                        fontSize: 9.0,
                                        letterSpacing: 0.19,
                                        fontFamily: 'avenir_medium',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new StyleSelectionPage()),
                                    );
                                  },
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
                    padding: new EdgeInsets.all(10.0),
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
                    padding: new EdgeInsets.all(10.0),
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
                fontSize: 22.0,
                fontFamily: 'helvetica_neue_medium',
                letterSpacing: 0.69,
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
                letterSpacing: 0.83,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
