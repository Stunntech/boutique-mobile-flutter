import 'package:flutter/material.dart';

List<_MyOrderTile> _tiles = <_MyOrderTile>[
  new _MyOrderTile(
    'assets/images/img.png',
    'Harajuku ',
    'ORDER PLACED',
    '16.25',
  ),
  new _MyOrderTile(
      'assets/images/img_order.png', 'Novelty ', 'OUT FOR DELIVERY', "14.25"),
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
                crossAxisCount: 1,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 0.0,
                children: _tiles.map((_MyOrderTile item) {
                  return new GridTile(
                    child: new Container(
                      height: 100.0,
                      child: new Card(
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(
                              child: new Image.asset(
                                item.imageUrl,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            new Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                    margin: new EdgeInsets.only(top: 25.0),
                                    child: new Text(
                                      item.itemName,
                                      overflow: TextOverflow.clip,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'avenir_black',
                                      ),
                                    ),
                                  ),
                                  new Container(
                                    margin: new EdgeInsets.only(top: 25.0),
                                    child: new Text(
                                      item.itemCost,
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontFamily: 'avenir_black',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Container(
                              decoration: new BoxDecoration(
                                color: Colors.amber,
                              ),
                              margin: new EdgeInsets.only(top: 25.0),
                              child: new Text(
                                item.itemDescription,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0,
                                  fontFamily: 'avenir_black',
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
