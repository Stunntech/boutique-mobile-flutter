import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'shopping_cart.dart';
import 'CustomShowDialog.dart';
import 'side_navigation.dart';

List<_ReviewItemTile> _kReviewTiles = <_ReviewItemTile>[
  new _ReviewItemTile(
    'Dorothy Vargas',
    4.0,
    'Awesome experience. The rate is very cheap. But the waiting time is little more i think. But overall a gud experience.',
  ),
  new _ReviewItemTile(
    'Paul Tran',
    3.5,
    'Awesome experience. The rate is very cheap. But the waiting time is little more i think. But overall a gud experience.',
  ),
];

List<ProductFeatureFilter> _kFilterSizeList = <ProductFeatureFilter>[
  new ProductFeatureFilter('S'),
  new ProductFeatureFilter('M'),
  new ProductFeatureFilter('L'),
  new ProductFeatureFilter('XL'),
  new ProductFeatureFilter('XXL'),
];

List<ProductFeatureFilter> _kFilterColorList = <ProductFeatureFilter>[
  new ProductFeatureFilter('Red'),
  new ProductFeatureFilter('Green'),
];

class ProductDetailPage extends StatefulWidget {
  ProductDetailPageState createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  double productRating = 3.0;
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
              height: 80.0,
              padding: new EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SideNavigationPage()),
                        );
                      },
                      child: new Container(
                        alignment: Alignment.topLeft,
                        child: new Image.asset(
                          "assets/images/menu_black.png",
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text(
                        'JAHMAIKA',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: 'avenir_black',
                          letterSpacing: 0.78,
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MyShoppingCartPage()),
                        );
                      },
                      child: new Container(
                        alignment: Alignment.centerRight,
                        child: new Image.asset(
                          "assets/images/shopping_bag_black.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Expanded(
              child: new LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: new ConstrainedBox(
                      constraints: new BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                            height: 360.0,
                            child: new IconTheme(
                              data: new IconThemeData(color: _kArrowColor),
                              child: new Stack(
                                children: <Widget>[
                                  new PageView.builder(
                                    physics:
                                        new AlwaysScrollableScrollPhysics(),
                                    controller: _controller,
                                    itemCount: _pages.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return _buildPageItem(
                                          context, index % _pages.length);
                                    },
                                  ),
                                  new Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: new Container(
                                      color: const Color(0xFF979797)
                                          .withOpacity(0.5),
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
                            margin: new EdgeInsets.only(top: 15.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  child: new StarRating(
                                    rating: rating,
                                    /* onRatingChanged: (rating) =>
                                        setState(() => this.rating = rating),*/
                                  ),
                                ),
                                new Container(
                                  child: new Text(
                                    'Based on 23 reviews',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 15.0,
                                      fontFamily: 'helvetica_neue',
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
                            alignment: Alignment.center,
                            height: 50.0,
                            child: new ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: _kFilterSizeList
                                  .map((ProductFeatureFilter filterItem) {
                                return new Container(
                                  padding: new EdgeInsets.only(
                                      left: 16.0, right: 16.0),
                                  alignment: Alignment.center,
                                  child: new Text(
                                    filterItem.itemName,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'helvetica_neue_medium',
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          new Container(
                            margin: new EdgeInsets.only(top: 20.0),
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
                            alignment: Alignment.center,
                            height: 50.0,
                            child: new ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: _kFilterColorList
                                  .map((ProductFeatureFilter filterItem) {
                                return new Container(
                                  padding: new EdgeInsets.only(
                                      left: 16.0, right: 16.0),
                                  alignment: Alignment.center,
                                  child: new Text(
                                    filterItem.itemName,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'helvetica_neue_medium',
                                    ),
                                  ),
                                );
                              }).toList(),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Container(
                                  margin: new EdgeInsets.only(left: 16.0),
                                  child: new Text(
                                    "\$ 40",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontFamily: 'helvetica_neue_medium',
                                    ),
                                  ),
                                ),
                                new Container(
                                  child: new FlatButton(
                                      child: new Container(
                                        height: 60.0,
                                        width: 200.0,
                                        padding: new EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            top: 15.0,
                                            bottom: 15.0),
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.black,
                                        ),
                                        child: new Text(
                                          'ADD TO CART',
                                          textAlign: TextAlign.center,
                                          style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontFamily: 'helvetica_neue_medium',
                                          ),
                                        ),
                                      ),
                                      onPressed: () {}),
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            margin: new EdgeInsets.all(16.0),
                            padding: new EdgeInsets.all(0.5),
                            decoration: new BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          new ExpansionTile(
                            title: new Container(
                              padding:
                                  new EdgeInsets.only(top: 24.0, bottom: 24.0),
                              child: new Text(
                                'DESCRIPTION',
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontFamily: 'helvetica_neue_light',
                                ),
                              ),
                            ),
                            children: <Widget>[
                              new Container(
                                margin: new EdgeInsets.all(16.0),
                                child: new Text(
                                  'Longer frock length  Stylish frills  Higher tearing strength  Attractive belt design  Extremely stylish  Comfortable to wear',
                                  textAlign: TextAlign.start,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'helvetica_neue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          new ExpansionTile(
                            title: new Container(
                              padding:
                                  new EdgeInsets.only(top: 24.0, bottom: 24.0),
                              child: new Text(
                                'SPECIFICATION',
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontFamily: 'helvetica_neue_light',
                                ),
                              ),
                            ),
                            children: <Widget>[
                              new Container(
                                margin: new EdgeInsets.all(16.0),
                                child: new Text(
                                  'The Girls Long Frock is acclaimed for is appealing design and fine prints. This frock is extremely comfortable to wear and boasts of exceptional fabric tearing strength.',
                                  textAlign: TextAlign.start,
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'helvetica_neue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          new ExpansionTile(
                            title: new Container(
                              padding:
                                  new EdgeInsets.only(top: 24.0, bottom: 24.0),
                              child: new Text(
                                'REVIEWS',
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontFamily: 'helvetica_neue_light',
                                ),
                              ),
                            ),
                            children: <Widget>[
                              new GridView.count(
                                shrinkWrap: true,
                                primary: false,
                                childAspectRatio: 2.0,
                                crossAxisCount: 1,
                                mainAxisSpacing: 2.0,
                                children:
                                    _kReviewTiles.map((_ReviewItemTile item) {
                                  return new GridTile(
                                    child: new Container(
                                      margin: new EdgeInsets.all(16.0),
                                      child: new Column(
                                        children: <Widget>[
                                          new Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              new Container(
                                                // margin: new EdgeInsets.only(top: 25.0),
                                                child: new Text(
                                                  item.userName,
                                                  textAlign: TextAlign.start,
                                                  style: new TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 24.0,
                                                    fontFamily:
                                                        'helvetica_neue',
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                child: new StarRating(
                                                  rating: item.userRating,
                                                  /*  onRatingChanged: (rating) =>
                                                         setState(() => this.rating = rating),*/
                                                ),
                                              ),
                                            ],
                                          ),
                                          new Container(
                                            margin:
                                                new EdgeInsets.only(top: 15.0),
                                            child: new Text(
                                              item.userReview,
                                              textAlign: TextAlign.start,
                                              style: new TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontFamily: 'helvetica_neue',
                                              ),
                                            ),
                                          ),
                                          new Container(
                                            margin:
                                                new EdgeInsets.only(top: 20.0),
                                            padding: new EdgeInsets.all(0.3),
                                            decoration: new BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          new Container(
                            margin:
                                new EdgeInsets.only(top: 40.0, bottom: 50.0),
                            alignment: Alignment.center,
                            child: new FlatButton(
                                child: new Container(
                                  padding: new EdgeInsets.only(
                                      left: 50.0,
                                      right: 50.0,
                                      top: 15.0,
                                      bottom: 15.0),
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: new BorderRadius.all(
                                        new Radius.elliptical(40.0, 50.0)),
                                    border: new Border.all(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  child: new Text(
                                    '+ Add review',
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontFamily: 'helvetica_neue_light',
                                      letterSpacing: 1.67,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      child: new ReviewDialog());
                                }),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class _ReviewItemTile {
  final String userName;
  final double userRating;
  final String userReview;

  _ReviewItemTile(this.userName, this.userRating, this.userReview);
}

class ProductFeatureFilter {
  final String itemName;

  ProductFeatureFilter(this.itemName);
}

class ReviewDialog extends StatefulWidget {
  ReviewDialogState createState() => ReviewDialogState();
}

class ReviewDialogState extends State<ReviewDialog> {
  double productRating = 0.0;
  @override
  Widget build(BuildContext context) {
    return new CustomAlertDialog(
      content: new Container(
        width: 260.0,
        height: 280.0,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(16.0),
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
                  new Container(
                    padding: new EdgeInsets.all(16.0),
                    child: new StarRating(
                      rating: productRating,
                      onRatingChanged: (rating) =>
                          setState(() => this.productRating = rating),
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
  }
}
