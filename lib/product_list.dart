import 'package:flutter/material.dart';

List<_ProductListTile> _tiles = <_ProductListTile>[
  new _ProductListTile(
    'assets/images/img.png',
    'Harajuku shirt ',
    '16.25',
  ),
  new _ProductListTile('assets/images/img_order.png', 'Novelty ', "14.25"),
  new _ProductListTile(
    'assets/images/img.png',
    'Harajuku ',
    '16.25',
  ),
  new _ProductListTile(
    'assets/images/img_order.png',
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
                      'JAHMAIKA',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'avenir_black',
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
            new Flexible(
              child: new GridView.count(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                children: _tiles.map((_ProductListTile item) {
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
                            new Expanded(
                                child: new Container(
                              // margin: new EdgeInsets.only(top: 25.0),
                              child: new Text(
                                item.itemDescription,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: const Color(0xFF33b17c),
                                  fontSize: 16.0,
                                  fontFamily: 'avenir_black',
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

class _ProductListTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  _ProductListTile(this.imageUrl, this.itemName, this.itemDescription);
}
