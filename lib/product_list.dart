import 'package:flutter/material.dart';
import 'FilterNew.dart';
import 'product_detail.dart';
import 'side_navigation.dart';
import 'shopping_cart.dart';

List<_ProductListTile> _tiles = <_ProductListTile>[
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '\$ 16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "\$ 14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '\$ 16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "\$ 14.25",
  ),
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '\$ 16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "\$ 14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '\$ 16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "\$ 14.25",
  ),
];

List<_FilterItemTile> _kCategoryTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'CATEGORY 1',
  ),
  new _FilterItemTile(
    'CATEGORY 2',
  ),
  new _FilterItemTile(
    'CATEGORY 3',
  ),
  new _FilterItemTile(
    'CATEGORY 4',
  ),
  new _FilterItemTile(
    'CATEGORY 5',
  ),
];

List<_FilterItemTile> _kBrandTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'BRAND 1',
  ),
  new _FilterItemTile(
    'BRAND 2',
  ),
  new _FilterItemTile(
    'BRAND 3',
  ),
  new _FilterItemTile(
    'BRAND 4',
  ),
  new _FilterItemTile(
    'BRAND 5',
  ),
];

List<_FilterItemTile> _kSizeTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'S',
  ),
  new _FilterItemTile(
    'M',
  ),
  new _FilterItemTile(
    'L',
  ),
  new _FilterItemTile(
    'XL',
  ),
  new _FilterItemTile(
    'XXL',
  ),
];

List<_FilterItemTile> _kColorTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'assets/images/color_black.png',
  ),
  new _FilterItemTile(
    'assets/images/color_white.png',
  ),
  new _FilterItemTile(
    'assets/images/color_red.png',
  ),
  new _FilterItemTile(
    'assets/images/color_green.png',
  ),
  new _FilterItemTile(
    'assets/images/color_blue.png',
  ),
];

class ProductListPage extends StatefulWidget {
  ProductListPageState createState() => ProductListPageState();
}

class ProductListPageState extends State<ProductListPage> {
  bool isCategoryExpanded = false;
  bool isBrandExpanded = false;
  bool isColorExpanded = false;
  bool isSizeExpanded = false;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var useMobileLayout = shortestSide < 600;

    if (useMobileLayout) {
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
                padding:
                    new EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
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
                            fontSize: 14.0,
                            fontFamily: 'avenir_black',
                            letterSpacing: 0.78,
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
                          fontSize: 14.0,
                          letterSpacing: 0.69,
                          fontFamily: 'Helvetica_neue_medium',
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
                                    fontSize: 12.0,
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
                                    fontSize: 12.0,
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
                                  builder: (context) =>
                                      new ProductDetailPage()),
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
                          fontSize: 14.0,
                          fontFamily: 'avenir_black',
                          letterSpacing: 0.78,
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
              padding: new EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            'Categories',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 0.69,
                              fontFamily: 'Helvetica_neue_medium',
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isCategoryExpanded) {
                                isCategoryExpanded = false;
                                isBrandExpanded = false;
                                isColorExpanded = false;
                                isSizeExpanded = false;
                              }
                              isCategoryExpanded = true;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            });
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
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            'Brand',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 0.69,
                              fontFamily: 'Helvetica_neue_medium',
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isBrandExpanded) {
                                isCategoryExpanded = false;
                                isBrandExpanded = false;
                                isColorExpanded = false;
                                isSizeExpanded = false;
                              }
                              isCategoryExpanded = false;
                              isBrandExpanded = true;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            });
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
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            'Colour',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 0.69,
                              fontFamily: 'Helvetica_neue_medium',
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isColorExpanded) {
                                isCategoryExpanded = false;
                                isBrandExpanded = false;
                                isColorExpanded = false;
                                isSizeExpanded = false;
                              }
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = true;
                              isSizeExpanded = false;
                            });
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
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            'Size',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 0.69,
                              fontFamily: 'Helvetica_neue_medium',
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isSizeExpanded) {
                                isCategoryExpanded = false;
                                isBrandExpanded = false;
                                isColorExpanded = false;
                                isSizeExpanded = false;
                              }
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = true;
                            });
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
                ],
              ),
            ),

            // filter for tablet

            (isCategoryExpanded)
                ? new Container(
                    alignment: Alignment.centerRight,
                    height: 60.0,
                    child: new ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children:
                          _kCategoryTiles.map((_FilterItemTile filterItem) {
                        return new Container(
                          padding: new EdgeInsets.only(left: 16.0, right: 16.0),
                          alignment: Alignment.centerRight,
                          child: new Text(
                            filterItem.itemName,
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'helvetica_neue_medium',
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : (isBrandExpanded)
                    ? new Container(
                        alignment: Alignment.centerRight,
                        height: 60.0,
                        child: new ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children:
                              _kBrandTiles.map((_FilterItemTile filterItem) {
                            return new Container(
                              padding:
                                  new EdgeInsets.only(left: 16.0, right: 16.0),
                              alignment: Alignment.centerRight,
                              child: new Text(
                                filterItem.itemName,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_medium',
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    : (isColorExpanded)
                        ? new Container(
                            alignment: Alignment.centerRight,
                            height: 60.0,
                            child: new ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: _kColorTiles
                                  .map((_FilterItemTile filterItem) {
                                return new Container(
                                  child: new GridTile(
                                    child: new Container(
                                      alignment: Alignment.centerRight,
                                      margin: new EdgeInsets.all(14.0),
                                      child: new Image.asset(
                                        filterItem.itemName,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        : (isSizeExpanded)
                            ? new Container(
                                alignment: Alignment.centerRight,
                                height: 60.0,
                                child: new ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: _kSizeTiles
                                      .map((_FilterItemTile filterItem) {
                                    return new Container(
                                      padding: new EdgeInsets.only(
                                          left: 16.0, right: 16.0),
                                      alignment: Alignment.centerRight,
                                      child: new Text(
                                        filterItem.itemName,
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontFamily: 'helvetica_neue_medium',
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            : new Container(),

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
                                  fontSize: 12.0,
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
                                  fontSize: 12.0,
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

class _FilterItemTile {
  final String itemName;

  _FilterItemTile(this.itemName);
}
