import 'package:flutter/material.dart';
import 'my_orders.dart';

class UserProfilePage extends StatefulWidget {
  UserProfilePageState createState() => UserProfilePageState();
}

class UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(top: 25.0),
                      padding: new EdgeInsets.all(8.0),
                      child: new Text(
                        'Back',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: const Color(0xFF7ec0ee),
                          fontSize: 14.0,
                          fontFamily: 'helvetica_neue_bold.ttf',
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 25.0),
                    child: new Text(
                      'Edit Profile',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'helvetica_neue_bold.ttf',
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      //  Navigator.pop(context);
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(top: 25.0),
                      padding: new EdgeInsets.all(8.0),
                      child: new Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: const Color(0xFF7ec0ee),
                          fontSize: 14.0,
                          fontFamily: 'helvetica_neue_bold.ttf',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Expanded(
              child: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                              width: 150.0,
                              height: 150.0,
                              alignment: Alignment.center,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      image: new AssetImage(
                                          "assets/images/image_top_collection.png")))),
                        ],
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 32.0),
                        child: new Text(
                          'Basic Information',
                          textAlign: TextAlign.start,
                          style: new TextStyle(
                            color: const Color(0xFF33b17c),
                            fontSize: 18.0,
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Text(
                          'Your name',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFFc4c4c4),
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                          margin: new EdgeInsets.only(top: 4.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              contentPadding: new EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              hintText: 'James Goodwin',
                              hintStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          )),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        padding: new EdgeInsets.all(0.5),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Text(
                          'Email id',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFFc4c4c4),
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                          margin: new EdgeInsets.only(top: 4.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              contentPadding: new EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              hintText: 'something@gmail.com',
                              hintStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          )),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        padding: new EdgeInsets.all(0.5),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Text(
                          'Address',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFFc4c4c4),
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                          margin: new EdgeInsets.only(top: 4.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              contentPadding: new EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              hintText:
                                  ' 2152 Denesik Glens Suite 411 San Diego USA',
                              hintStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          )),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        padding: new EdgeInsets.all(0.5),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 32.0),
                        child: new Text(
                          'Change password',
                          textAlign: TextAlign.start,
                          style: new TextStyle(
                            color: const Color(0xFF33b17c),
                            fontSize: 18.0,
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFFc4c4c4),
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                          margin: new EdgeInsets.only(top: 4.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              contentPadding: new EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              hintText: ' ******',
                              hintStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          )),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        padding: new EdgeInsets.all(0.5),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Text(
                          'Re-type password',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFFc4c4c4),
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Container(
                          margin: new EdgeInsets.only(top: 4.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              filled: false,
                              contentPadding: new EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              hintText: ' ******',
                              hintStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          )),
                      new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        padding: new EdgeInsets.all(0.5),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(top: 32.0),
                        child: new Text(
                          'Orders',
                          textAlign: TextAlign.start,
                          style: new TextStyle(
                            color: const Color(0xFF33b17c),
                            fontSize: 18.0,
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Container(
                            margin: new EdgeInsets.only(top: 16.0),
                            child: new Text(
                              'My Orders',
                              textAlign: TextAlign.start,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'helvetica_neue_bold.ttf',
                              ),
                            ),
                          ),
                          new GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new MyOrderPage()),
                              );
                            },
                            child: new Container(
                              alignment: Alignment.topRight,
                              margin: new EdgeInsets.only(top: 20.0),
                              padding: new EdgeInsets.all(8.0),
                              child: new Image.asset(
                                "assets/images/triangle_right.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
