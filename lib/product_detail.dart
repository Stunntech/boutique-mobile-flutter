import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'shipping_details.dart';
import 'shopping_cart.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPageState createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  double rating = 3.5;

  final _controller = new PageController(viewportFraction: 1.0);

  static const _kDuration = const Duration(milliseconds: 400);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  static onTap(index) {
    print("$index selected.");
  }

  final List<Widget> _pages = <Widget>[
    new Image.asset("assets/images/product_3.png"),
    new Image.asset("assets/images/product_3.png"),
    new Image.asset("assets/images/product_3.png"),
    new Image.asset("assets/images/product_3.png"),
    new Image.asset("assets/images/product_3.png"),
    new Image.asset("assets/images/product_3.png"),
  ];

  Widget _buildPageItem(BuildContext context, int index) {
    return new Page(page: _pages[index], idx: index);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
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
                      'JAHMAIKA',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
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
                children: <Widget>[
                  new Expanded(
                    child: new IconTheme(
                      data: new IconThemeData(color: _kArrowColor),
                      child: new Stack(
                        children: <Widget>[
                          new PageView.builder(
                            physics: new AlwaysScrollableScrollPhysics(),
                            controller: _controller,
                            itemCount: _pages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _buildPageItem(
                                  context, index % _pages.length);
                            },
                          ),
                          new Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: new Container(
                              color: const Color(0xFF979797).withOpacity(0.5),
                              margin: EdgeInsets.only(top: 50.0),
                              padding: const EdgeInsets.all(20.0),
                              child: new Center(
                                child: new DotsIndicator(
                                  controller: _controller,
                                  itemCount: _pages.length,
                                  onPageSelected: (int page) {
                                    _controller.animateToPage(
                                      page,
                                      duration: _kDuration,
                                      curve: _kCurve,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
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

/* new Expanded(
                    child: new IconTheme(
                      data: new IconThemeData(color: _kArrowColor),
                      child: new Stack(
                        children: <Widget>[
                          new PageView.builder(
                            physics: new AlwaysScrollableScrollPhysics(),
                            controller: _controller,
                            itemCount: _pages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _buildPageItem(
                                  context, index % _pages.length);
                            },
                          ),
                          new Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: new Container(
                              color: const Color(0xFF979797).withOpacity(0.5),
                              margin: EdgeInsets.only(top: 50.0),
                              padding: const EdgeInsets.all(20.0),
                              child: new Center(
                                child: new DotsIndicator(
                                  controller: _controller,
                                  itemCount: _pages.length,
                                  onPageSelected: (int page) {
                                    _controller.animateToPage(
                                      page,
                                      duration: _kDuration,
                                      curve: _kCurve,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // item name
                  new Container(
                    margin: new EdgeInsets.only(top: 25.0),
                    child: new Text(
                      'Avenir Long Maxi',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  ),

                  new Container(
                    padding: EdgeInsets.only(right: 25.0, left: 35.0),
                    margin: new EdgeInsets.only(top: 15.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                            child: new StarRating(
                              rating: rating,
                              onRatingChanged: (rating) =>
                                  setState(() => this.rating = rating),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Container(
                            // margin: new EdgeInsets.only(top: 25.0),
                            child: new Text(
                              'Based on 23 reviews',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontFamily: 'helvetica_neue',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  new Container(
                    width: 200.0,
                    margin: new EdgeInsets.only(top: 16.0),
                    padding: new EdgeInsets.all(0.5),
                    decoration: new BoxDecoration(
                      color: Colors.black,
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(top: 25.0),
                    child: new Text(
                      'Size',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(top: 25.0),
                    child: new Text(
                      'Color',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.all(16.0),
                    padding: new EdgeInsets.all(0.5),
                    decoration: new BoxDecoration(
                      color: Colors.black,
                    ),
                  ),

                  new Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            "40",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'helvetica_neue_medium',
                            ),
                          ),
                        ),
                        new Container(
                          child: new FlatButton(
                              child: new Container(
                                padding: new EdgeInsets.only(
                                    left: 65.0,
                                    right: 65.0,
                                    top: 15.0,
                                    bottom: 15.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.black,
                                ),
                                child: new Text(
                                  'ADD TO CART',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: 'helvetica_neue_medium',
                                  ),
                                ),
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),

                  */

class Page extends StatelessWidget {
  final page;
  final idx;

  Page({
    @required this.page,
    @required this.idx,
  });

  onTap() {
    print("${this.idx} selected.");
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(0.0),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: 250.0,
            child: new Card(
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  this.page,
                  new Material(
                    type: MaterialType.transparency,
                    child: new InkWell(onTap: this.onTap),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  StarRating(
      {this.starCount = 5, this.rating = .0, this.onRatingChanged, this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: const Color(0xFF33b17c),
        // color: Theme.of(context).buttonColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        // color: color ?? Theme.of(context).primaryColor,
        color: const Color(0xFF33b17c),
      );
    } else {
      icon = new Icon(
        Icons.star,
        //color: color ?? Theme.of(context).primaryColor,
        color: const Color(0xFF33b17c),
      );
    }
    return new InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
