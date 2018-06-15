import 'package:flutter/material.dart';

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

class FilterPage extends StatefulWidget {
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  bool visibilityCategory = false;
  bool visibilityBrand = false;
  bool visibilitySize = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "category") {
        visibilityCategory = visibility;
      }

      if (field == "brand") {
        visibilityBrand = visibility;
      }

      if (field == "size") {
        visibilitySize = visibility;
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
              padding: new EdgeInsets.all(18.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    margin: new EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: new Text(
                      'APPLY FILTER',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: const Color(0xFF33b17c),
                        fontSize: 18.0,
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
                      'CATEGORIES',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.69,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      visibilityCategory
                          ? _changed(false, "category")
                          : _changed(true, "category");
                      //  Navigator.pop(context);
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
            visibilityCategory
                ? new Flexible(
                    child: new GridView.count(
                      childAspectRatio: 2.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      children: _kCategoryTiles.map((_FilterItemTile item) {
                        return new GridTile(
                          child: new Container(
                            margin: new EdgeInsets.all(10.0),
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
                      'BRAND',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.69,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      visibilityBrand
                          ? _changed(false, "brand")
                          : _changed(true, "brand");
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

            // Brand list

            visibilityBrand
                ? new Flexible(
                    child: new GridView.count(
                      childAspectRatio: 2.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      children: _kCategoryTiles.map((_FilterItemTile item) {
                        return new GridTile(
                          child: new Container(
                            margin: new EdgeInsets.all(10.0),
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
                      'COLOUR',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.69,
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
                      'SIZE',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_medium',
                        letterSpacing: 0.69,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      visibilitySize
                          ? _changed(false, "size")
                          : _changed(true, "size");
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

            visibilitySize
                ? new Flexible(
                    child: new GridView.count(
                      childAspectRatio: 2.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      children: _kCategoryTiles.map((_FilterItemTile item) {
                        return new GridTile(
                          child: new Container(
                            margin: new EdgeInsets.all(10.0),
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
                        );
                      }).toList(),
                    ),
                  )
                : new Container(),
          ],
        ),
      ),
    );
  }
}

class _FilterItemTile {
  final String itemName;

  _FilterItemTile(this.itemName);
}
