import 'package:flutter/material.dart';

List<Widget> _tiles = const <Widget>[
  const _CategoryTile('assets/images/footwear.png', 'BEST IN FOOTWEAR',
      'Essential and Luxury footwear fashion'),
  const _CategoryTile('assets/images/cloth.png', 'BEST IN CLOTHING',
      'Luxury designer shirts tailored from the finest fabrications'),
  const _CategoryTile('assets/images/watch.png', 'BEST IN WATCHES',
      'Essential and Luxury watch fashion'),
  const _CategoryTile('assets/images/bag.png', 'BEST IN BAGS',
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
        child: new Column(
          children: <Widget>[
            topSection,
            new ItemListSection(),
          ],
        ),
      ),
    );
  }

  Widget topSection = new Container(
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
                  // Navigator.pop(context);
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

class ItemListSection extends StatefulWidget {
  ItemListSectionState createState() => ItemListSectionState();
}

class ItemListSectionState extends State<ItemListSection> {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _tiles,
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile(this.imageUrl, this.itemName, this.itemDescription);

  final String imageUrl;
  final String itemName;
  final String itemDescription;

  @override
  Widget build(BuildContext context) {
    return new Card(
        color: Colors.white,
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Image.asset(imageUrl),
              ),
              new Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.only(top: 8.0),
                child: new Text(
                  itemName,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontFamily: 'helvetica_neue_medium',
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.only(top: 8.0),
                child: new Text(
                  itemDescription,
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
                        left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
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
        ));
  }
}
