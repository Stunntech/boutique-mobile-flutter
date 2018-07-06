import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/sidenavigation_and_tracking_screens/user_profile.dart';
import 'package:flutter_jahmaika/home_screens/gender_selection.dart';

List<_ShopItemTile> _tiles = <_ShopItemTile>[
  new _ShopItemTile(
    'assets/images/outfits.png',
    'Outfits',
  ),
  new _ShopItemTile(
    'assets/images/accesorices.png',
    'Accesories',
  ),
  new _ShopItemTile(
    'assets/images/books.png',
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
  bool visibilityTag = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag") {
        visibilityTag = visibility;
      }
    });
  }

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                        fontSize: 16.0,
                        fontFamily: 'avenir_black',
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
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      visibilityTag
                          ? _changed(false, "tag")
                          : _changed(true, "tag");
                    },
                    child: new Container(
                      padding: new EdgeInsets.all(6.0),
                      height: 25.0,
                      width: 25.0,
                      child: new Image.asset(
                        "assets/images/triangle_down.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            visibilityTag
                ? new Flexible(
                    child: new GridView.count(
                      childAspectRatio: 1.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      children: _tiles.map((_ShopItemTile item) {
                        return new GridTile(
                          child: new Container(
                            margin:
                                new EdgeInsets.only(left: 10.0, right: 10.0),
                            child: new Container(
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    height: 50.0,
                                    width: 50.0,
                                    child: new Image.asset(
                                      item.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  new Container(
                                    margin: new EdgeInsets.only(top: 10.0),
                                    child: new Text(
                                      item.itemName,
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'helvetica_neue_medium',
                                        letterSpacing: 0.59,
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
                  )
                : new Container(),
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
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new GenderSelectionPage()),
                      );
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
                        fontSize: 16.0,
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
                        fontSize: 16.0,
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
                      'PROFILE',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.81,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new UserProfilePage()),
                      );
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
