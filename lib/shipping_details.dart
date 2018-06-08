import 'package:flutter/material.dart';

class ShippingDetailPage extends StatefulWidget {
  ShippingDetailPageState createState() => ShippingDetailPageState();
}

class ShippingDetailPageState extends State<ShippingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(8.0),
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      'SHIPPING DETAILS',
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
            new SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new Container(
                margin: new EdgeInsets.all(16.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(top: 8.0),
                      child: new Text(
                        'Billing Address',
                        textAlign: TextAlign.start,
                        style: new TextStyle(
                          color: const Color(0xFF33b17c),
                          fontSize: 18.0,
                          fontFamily: 'helvetica_neue_bold',
                        ),
                      ),
                    ),
                    new Container(
                      margin: new EdgeInsets.only(top: 10.0),
                      child: new Text(
                        'Your Name',
                        textAlign: TextAlign.left,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ),
                    new Container(
                        margin: new EdgeInsets.only(top: 8.0),
                        decoration: new BoxDecoration(
                            border:
                                new Border.all(color: Colors.grey.shade400)),
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            filled: false,
                            contentPadding: new EdgeInsets.all(15.0),
                            hintText: 'full name',
                            hintStyle: new TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )),
                    new Container(
                      margin: new EdgeInsets.only(top: 10.0),
                      child: new Text(
                        'Address',
                        textAlign: TextAlign.left,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ),
                    new Container(
                        margin: new EdgeInsets.only(top: 8.0),
                        decoration: new BoxDecoration(
                            border:
                                new Border.all(color: Colors.grey.shade400)),
                        child: new TextField(
                          maxLines: 5,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            filled: false,
                            contentPadding: new EdgeInsets.all(15.0),
                            hintText: 'address line',
                            hintStyle: new TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )),
                    new Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(right: 5.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Container(
                                    margin: new EdgeInsets.only(top: 10.0),
                                    child: new Text(
                                      'Country',
                                      textAlign: TextAlign.left,
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ),
                                  new Container(
                                      margin: new EdgeInsets.only(top: 8.0),
                                      decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Colors.grey.shade400)),
                                      child: new TextField(
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          filled: false,
                                          contentPadding:
                                              new EdgeInsets.all(15.0),
                                          hintText: 'USA',
                                          hintStyle: new TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                  new Container(
                                    margin: new EdgeInsets.only(top: 10.0),
                                    child: new Text(
                                      'City',
                                      textAlign: TextAlign.left,
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ),
                                  new Container(
                                      margin: new EdgeInsets.only(top: 8.0),
                                      decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Colors.grey.shade400)),
                                      child: new TextField(
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          filled: false,
                                          contentPadding:
                                              new EdgeInsets.all(15.0),
                                          hintText: 'abcdef',
                                          hintStyle: new TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(left: 5.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    margin: new EdgeInsets.only(top: 10.0),
                                    child: new Text(
                                      'State',
                                      textAlign: TextAlign.left,
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ),
                                  new Container(
                                      margin: new EdgeInsets.only(top: 8.0),
                                      decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Colors.grey.shade400)),
                                      child: new TextField(
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          filled: false,
                                          contentPadding:
                                              new EdgeInsets.all(15.0),
                                          hintText: 'San Diego',
                                          hintStyle: new TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                  new Container(
                                    margin: new EdgeInsets.only(top: 10.0),
                                    child: new Text(
                                      'Zip',
                                      textAlign: TextAlign.left,
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ),
                                  new Container(
                                      margin: new EdgeInsets.only(top: 8.0),
                                      decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Colors.grey.shade400)),
                                      child: new TextField(
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          filled: false,
                                          contentPadding:
                                              new EdgeInsets.all(15.0),
                                          hintText: '2345',
                                          hintStyle: new TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // sdfghj

                    new Container(
                      margin: new EdgeInsets.only(top: 10.0),
                      child: new Text(
                        'Email Id',
                        textAlign: TextAlign.left,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ),
                    new Container(
                        margin: new EdgeInsets.only(top: 8.0),
                        decoration: new BoxDecoration(
                            border:
                                new Border.all(color: Colors.grey.shade400)),
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            filled: false,
                            contentPadding: new EdgeInsets.all(15.0),
                            hintText: 'something@gmail.com',
                            hintStyle: new TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
