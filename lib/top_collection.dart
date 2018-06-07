import 'package:flutter/material.dart';

class TopCollectionPage extends StatefulWidget {
  TopCollectionPageState createState() => TopCollectionPageState();
}

class TopCollectionPageState extends State<TopCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            topSection,
            bottomSection,
          ],
        ),
      ),
    );
  }

  Widget topSection = new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("assets/images/background_top_collection.png"),
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
          margin: new EdgeInsets.only(top: 90.0),
          child: new Text(
            'JAHMAIKA',
            textAlign: TextAlign.center,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontFamily: 'helvetica_neue_light.ttf',
            ),
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(top: 16.0),
          child: new Text(
            'Top collection 2017',
            textAlign: TextAlign.center,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'helvetica_neue_light.ttf',
            ),
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: new FlatButton(
            child: new Container(
              width: 150.0,
              height: 50.0,
              padding: new EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius:
                    new BorderRadius.all(new Radius.elliptical(40.0, 50.0)),
                border: new Border.all(
                  color: Colors.white,
                ),
              ),
              child: new Text(
                'DISCOVER',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
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
  );

  Widget bottomSection = new Container(
    child: new Column(
      children: <Widget>[
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'Christmas is back !',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'helvetica_neue_light',
                        ),
                      ),
                    ),
                    new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'Wide collection of santa themed clothes for your christmas party.',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontFamily: 'helvetica_neue_light',
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
                            'Get them!',
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
              ),
            ),
            new Expanded(
              child: new Container(
                child: new Image.asset(
                  "assets/images/image_top_collection.png",
                ),
              ),
            ),
          ],
        ),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: new Container(
                child: new Image.asset(
                  "assets/images/image_top_collection_winter.png",
                ),
              ),
            ),
            new Expanded(
              child: new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      child: new Text(
                        'Winter escape',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'helvetica_neue_light',
                        ),
                      ),
                    ),
                    new Container(
                      child: new Text(
                        'Protect your dear ones from winter with our wide range of winter clothes.',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontFamily: 'helvetica_neue_light',
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
                            'Get them!',
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
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
