import 'package:flutter/material.dart';
import 'user_profile.dart';
import 'shopping_cart.dart';
import 'side_navigation.dart';
import 'CustomShowDialog.dart';

class ShippingDetailPage extends StatefulWidget {
  ShippingDetailPageState createState() => ShippingDetailPageState();
}

class ShippingDetailPageState extends State<ShippingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SideNavigationPage()),
                      );
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new MyShoppingCartPage()),
                      );
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
            new Expanded(
              child: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  new Column(
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
                          mainAxisSize: MainAxisSize.max,
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

                      new Container(
                        margin: new EdgeInsets.only(top: 10.0),
                        child: new Text(
                          'Phone Number',
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
                              hintText: '9876543210',
                              hintStyle: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),

                      //shipping details

                      new Container(
                        margin: new EdgeInsets.only(top: 24.0),
                        child: new Text(
                          'Shipping Info',
                          textAlign: TextAlign.start,
                          style: new TextStyle(
                            color: const Color(0xFF33b17c),
                            fontSize: 18.0,
                            fontFamily: 'helvetica_neue_bold',
                          ),
                        ),
                      ),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Checkbox(
                            value: false,
                            onChanged: null,
                          ),
                          new Container(
                            child: new Text(
                              'same as above',
                              style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
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
                          mainAxisSize: MainAxisSize.max,
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

                      new Container(
                        margin: new EdgeInsets.only(top: 10.0),
                        child: new Text(
                          'Phone Number',
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
                              hintText: '9876543210',
                              hintStyle: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),

                      // Card Details

                      new Container(
                        margin: new EdgeInsets.only(top: 24.0),
                        child: new Text(
                          'Card Details',
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
                          'Name on card',
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
                          'Card number',
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
                              hintText: 'card number',
                              hintStyle: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),

                      new Container(
                        margin: new EdgeInsets.only(top: 10.0),
                        child: new Text(
                          'Card expiration date',
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
                              hintText: '25/2025',
                              hintStyle: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),

                      new Container(
                        margin: new EdgeInsets.only(top: 10.0),
                        child: new Text(
                          'Cvv',
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
                              hintText: '025',
                              hintStyle: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),

            // checkout button

            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    _showAlert();
                  },
                  child: Container(
                    padding: new EdgeInsets.all(16.0),
                    decoration: new BoxDecoration(
                      color: const Color(0xFF33b17c),
                    ),
                    child: new Text(
                      'Proceed to checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'avenir_medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // alert

/*  void _showAlert() {
    AlertDialog dialog = new AlertDialog(
      content: new Container(
        width: 290.0,
        height: 430.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: new BorderRadius.all(new Radius.circular(70.0)),
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Image.asset(
                "assets/images/stars.png",
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              child: new Text(
                'Thank you! ',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontFamily: 'avenir_heavy',
                  letterSpacing: 0.24,
                ),
              ),
            ),
            new Container(
              child: new Text(
                'Your order has been successful placed. ',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontFamily: 'avenir_book',
                  letterSpacing: -0.08,
                ),
              ),
            ),
            new Container(
              child: new FlatButton(
                  child: new Container(
                    padding: new EdgeInsets.only(
                        left: 65.0, right: 65.0, top: 15.0, bottom: 15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xFF33b17c),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(10.0)),
                      border: new Border.all(
                        color: const Color(0xFF33b17c),
                      ),
                    ),
                    child: new Text(
                      'OK',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {}),
            ),
          ],
        ),
      ),
    );

    showDialog(context: context, child: dialog);
  }*/

  void _showAlert() {
    CustomAlertDialog dialog = new CustomAlertDialog(
      content: new Container(
        width: 260.0,
        height: 260.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // dialog top
            new Expanded(
              child: new Row(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(8.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                    ),
                    child: new Text(
                      'Rate',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'helvetica_neue_light',
                        letterSpacing: 0.83,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            new Container(
              // margin: new EdgeInsets.only(top: 16.0),
              padding: new EdgeInsets.all(0.5),
              decoration: new BoxDecoration(
                color: Colors.grey,
              ),
            ),

            // dialog centre
            new Expanded(
              child: new Container(
                  child: new TextField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  filled: false,
                  contentPadding: new EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                  hintText: ' add review',
                  hintStyle: new TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20.0,
                    fontFamily: 'helvetica_neue_light',
                    letterSpacing: 0.83,
                  ),
                ),
              )),
              flex: 2,
            ),

            // dialog bottom
            new Expanded(
              child: new GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: new Container(
                  padding: new EdgeInsets.all(16.0),
                  decoration: new BoxDecoration(
                    color: const Color(0xFF33b17c),
                  ),
                  child: new Text(
                    'Rate product',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'helvetica_neue_light',
                      letterSpacing: 0.83,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, child: dialog);
  }
}
