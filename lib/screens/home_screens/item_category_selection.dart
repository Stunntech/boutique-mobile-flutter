import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/home_screens/style_selection.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

List<_CategoryTile> _tiles = <_CategoryTile>[
  new _CategoryTile('assets/images/footwear.png', 'BEST IN FOOTWEAR',
      'Essential and Luxury footwear fashion'),
  new _CategoryTile('assets/images/cloth.png', 'BEST IN CLOTHING',
      'Luxury designer shirts and ladies fashion'),
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
  double _LIST_ITEM_IMAGE_WIDTH;
  double _LIST_ITEM_IMAGE_HEIGHT;
  double _PADDING_SMALL;
  double _PADDING_MEDIUM;
  double _PADDING_LARGE;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_LARGE;
  double _TEXT_SIZE_YOUR_NEED;
  double _TEXT_SIZE_PERFECT_MATCH;
  double _TEXT_SIZE_JAHMAIKA;
  double _TEXT_SIZE_ITEM_NAME;
  double _TEXT_SIZE_ITEM_DESCRIPTION;
  double _TEXT_SIZE_BUTTON;
  double _LIST_ITEM_BUTTON_WIDTH;
  double _LIST_ITEM_BUTTON_HEIGHT;
  double _BUTTON_WIDTH;
  double _MAIN_AXIS_SPACING;
  double _CHILD_ASPECT_RATIO;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            _buildTopSection(),
            _buildCategoryListSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryListSection() {
    return new Expanded(
      flex: 1,
      child: new GridView.count(
        childAspectRatio: _CHILD_ASPECT_RATIO,
        crossAxisCount: 2,
        mainAxisSpacing: _MAIN_AXIS_SPACING,
        children: _tiles.map((_CategoryTile item) {
          return new GridTile(
            child: _buildGridTileForCategoryList(item),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGridTileForCategoryList(_CategoryTile item) {
    return new Container(
      padding: new EdgeInsets.only(left: _PADDING_LARGE, right: _PADDING_LARGE),
      color: Colors.white,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(
            width: _LIST_ITEM_IMAGE_WIDTH,
            height: _LIST_ITEM_IMAGE_HEIGHT,
            child: new Image.asset(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Text(
              item.itemName,
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.black,
                fontSize: _TEXT_SIZE_ITEM_NAME,
                letterSpacing: 0.2,
                fontFamily: 'avenir_light',
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Text(
              item.itemDescription,
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.black,
                fontSize: _TEXT_SIZE_ITEM_DESCRIPTION,
                letterSpacing: 0.25,
                fontFamily: 'avenir_heavy',
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new FlatButton(
              child: new Container(
                height: _LIST_ITEM_BUTTON_HEIGHT,
                width: _LIST_ITEM_BUTTON_WIDTH,
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
                  'SHOP NOW',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: _TEXT_SIZE_BUTTON,
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
                      builder: (context) => new StyleSelectionPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return new Expanded(
        child: new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/bg_select_item_type.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: new Column(
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
                    padding: new EdgeInsets.all(_PADDING_MEDIUM),
                    child: new Image.asset(
                      "assets/images/menu_white.png",
                    ),
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
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
                    padding: new EdgeInsets.all(_PADDING_MEDIUM),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(
                    left: _PADDING_LARGE, right: _PADDING_LARGE),
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
                margin: new EdgeInsets.only(top: _MARGIN_LARGE),
                child: new Text(
                  "YOUR NEED",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: _TEXT_SIZE_YOUR_NEED,
                    fontFamily: 'helvetica_neue_medium',
                    letterSpacing: 0.83,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _LIST_ITEM_IMAGE_WIDTH = 130.0;
      _LIST_ITEM_IMAGE_HEIGHT = 140.0;
      _PADDING_SMALL = 8.0;
      _PADDING_MEDIUM = 10.0;
      _PADDING_LARGE = 20.0;
      _MARGIN_SMALL = 20.0;
      _MARGIN_MEDIUM = 25.0;
      _MARGIN_LARGE = 28.0;
      _TEXT_SIZE_YOUR_NEED = 24.0;
      _TEXT_SIZE_PERFECT_MATCH = 20.0;
      _TEXT_SIZE_JAHMAIKA = 12.0;
      _TEXT_SIZE_ITEM_NAME = 12.0;
      _TEXT_SIZE_ITEM_DESCRIPTION = 11.0;
      _TEXT_SIZE_BUTTON = 9.0;
      _LIST_ITEM_BUTTON_WIDTH = 72.0;
      _LIST_ITEM_BUTTON_HEIGHT = 24.0;
      _BUTTON_WIDTH = 2.0;
      _MAIN_AXIS_SPACING = 16.0;
      _CHILD_ASPECT_RATIO = 0.7;
    } else if (shortestSide >= 600) {
      _LIST_ITEM_IMAGE_WIDTH = 250.0;
      _LIST_ITEM_IMAGE_HEIGHT = 210.0;
      _PADDING_SMALL = 12.0;
      _PADDING_MEDIUM = 15.0;
      _PADDING_LARGE = 30.0;
      _MARGIN_SMALL = 30.0;
      _MARGIN_MEDIUM = 37.0;
      _MARGIN_LARGE = 42.0;
      _TEXT_SIZE_YOUR_NEED = 48.0;
      _TEXT_SIZE_PERFECT_MATCH = 40.0;
      _TEXT_SIZE_JAHMAIKA = 24.0;
      _TEXT_SIZE_ITEM_NAME = 24.0;
      _TEXT_SIZE_ITEM_DESCRIPTION = 22.0;
      _TEXT_SIZE_BUTTON = 18.0;
      _LIST_ITEM_BUTTON_WIDTH = 152.0;
      _LIST_ITEM_BUTTON_HEIGHT = 38.0;
      _BUTTON_WIDTH = 2.0;
      _MAIN_AXIS_SPACING = 32.0;
      _CHILD_ASPECT_RATIO = 0.9;
    }
  }
}

class _CategoryTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  _CategoryTile(this.imageUrl, this.itemName, this.itemDescription);
}
