import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/FilterNew.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/product_detail.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/product_list_page/product_list_contract.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/product_list_page/product_list_model.dart';
import 'package:flutter_jahmaika/screens/product_details_screens/product_list_page/product_list_presenter.dart';
import 'package:flutter_jahmaika/screens/sidenavigation_and_tracking_screens/side_navigation.dart';

List<_FilterItemTile> _kBrandTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'BRAND 1',
  ),
  new _FilterItemTile(
    'BRAND 2',
  ),
  new _FilterItemTile(
    'BRAND 3',
  ),
  new _FilterItemTile(
    'BRAND 4',
  ),
  new _FilterItemTile(
    'BRAND 5',
  ),
];

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

List<_FilterItemTile> _kColorTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'assets/images/color_black.png',
  ),
  new _FilterItemTile(
    'assets/images/color_white.png',
  ),
  new _FilterItemTile(
    'assets/images/color_red.png',
  ),
  new _FilterItemTile(
    'assets/images/color_green.png',
  ),
  new _FilterItemTile(
    'assets/images/color_blue.png',
  ),
];

List<_FilterItemTile> _kSizeTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'S',
  ),
  new _FilterItemTile(
    'M',
  ),
  new _FilterItemTile(
    'L',
  ),
  new _FilterItemTile(
    'XL',
  ),
  new _FilterItemTile(
    'XXL',
  ),
];

List<_ProductListTile> _tiles = <_ProductListTile>[
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '\$ 16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "\$ 14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '\$ 16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "\$ 14.25",
  ),
  new _ProductListTile(
    'assets/images/product_2.png',
    'Harajuku shirt ',
    '\$ 16.25',
  ),
  new _ProductListTile('assets/images/product_3.png', 'Novelty ', "\$ 14.25"),
  new _ProductListTile(
    'assets/images/product_4.png',
    'Harajuku ',
    '\$ 16.25',
  ),
  new _ProductListTile(
    'assets/images/product_3.png',
    'Novelty ',
    "\$ 14.25",
  ),
];

class ProductListPage extends StatefulWidget {
  _ProductListPageState createState() => _ProductListPageState();
}

class _FilterItemTile {
  final String itemName;

  _FilterItemTile(this.itemName);
}

class _ProductListPageState extends State<ProductListPage> implements View {
  double _TEXT_SIZE_JAHMAIKA;
  double _TEXT_SIZE_FILTER;
  double _TEXT_SIZE_FILTER_TYPE;
  double _TEXT_SIZE_PRODUCT_NAME;
  double _TEXT_SIZE_PRODUCT_COST;
  double _PADDING_SMALL;
  double _PADDING_LARGE;
  double _MARGIN_EXTRA_SMALL;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_LARGE;
  double _PRODUCT_IMAGE_WIDTH;
  double _PRODUCT_IMAGE_HEIGHT;
  double _CONTAINER_HEIGHT;
  double _FILTER_ARROW_HEIGHT;
  double _TEXT_SIZE_FILTER_ITEM;

  bool isCategoryExpanded = false;
  bool isBrandExpanded = false;
  bool isColorExpanded = false;
  bool isSizeExpanded = false;

  List<Item> _items;

  HomePresenter _presenter;

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);

    var useMobileLayout = shortestSide < 600;

    if (useMobileLayout) {
      return new Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildCustomAppBar(),
              _buildFilterSectionForMobile(),
              _buildProductList(),
            ],
          ),
        ),
      );
    }

    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildCustomAppBar(),
            _buildFilterSectionForTablet(),
            _buildProductList(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _presenter = new HomePresenter(new HomeModel(), this);
    _presenter.viewDisplayed();
  }

  @override
  void showItems(List<Item> items) {
    setState(() {
      _items = items;
    });
  }

  Widget _buildCustomAppBar() {
    return new Container(
      height: _CONTAINER_HEIGHT,
      padding: new EdgeInsets.only(
          top: _PADDING_LARGE, left: _PADDING_SMALL, right: _PADDING_SMALL),
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
                  fontSize: _TEXT_SIZE_JAHMAIKA,
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
    );
  }

  Widget _buildFilterSectionForMobile() {
    return new Container(
      margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
      decoration: new BoxDecoration(
        color: const Color(0xFFf9f9f9),
      ),
      padding: new EdgeInsets.all(_PADDING_SMALL),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Container(
            child: new Text(
              'Filter',
              style: new TextStyle(
                color: Colors.black,
                fontSize: _TEXT_SIZE_FILTER,
                letterSpacing: 0.69,
                fontFamily: 'Helvetica_neue_medium',
              ),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new FilterPage()),
              );
            },
            child: new Container(
              margin: new EdgeInsets.only(left: _MARGIN_MEDIUM),
              height: _FILTER_ARROW_HEIGHT,
              child: new Image.asset(
                "assets/images/triangle_down.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildFilterSectionForTablet() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
            decoration: new BoxDecoration(
              color: const Color(0xFFf9f9f9),
            ),
            padding: new EdgeInsets.only(
                top: _PADDING_SMALL, bottom: _PADDING_SMALL),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          'Categories',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: _TEXT_SIZE_FILTER_TYPE,
                            letterSpacing: 0.69,
                            fontFamily: 'Helvetica_neue_medium',
                          ),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isCategoryExpanded) {
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            }
                            isCategoryExpanded = true;
                            isBrandExpanded = false;
                            isColorExpanded = false;
                            isSizeExpanded = false;
                          });
                        },
                        child: new Container(
                          margin: new EdgeInsets.only(left: _MARGIN_MEDIUM),
                          height: _FILTER_ARROW_HEIGHT,
                          child: new Image.asset(
                            "assets/images/triangle_down.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          'Brand',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: _TEXT_SIZE_FILTER_TYPE,
                            letterSpacing: 0.69,
                            fontFamily: 'Helvetica_neue_medium',
                          ),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isBrandExpanded) {
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            }
                            isCategoryExpanded = false;
                            isBrandExpanded = true;
                            isColorExpanded = false;
                            isSizeExpanded = false;
                          });
                        },
                        child: new Container(
                          margin: new EdgeInsets.only(left: _MARGIN_MEDIUM),
                          height: _FILTER_ARROW_HEIGHT,
                          child: new Image.asset(
                            "assets/images/triangle_down.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          'Colour',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: _TEXT_SIZE_FILTER_TYPE,
                            letterSpacing: 0.69,
                            fontFamily: 'Helvetica_neue_medium',
                          ),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isColorExpanded) {
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            }
                            isCategoryExpanded = false;
                            isBrandExpanded = false;
                            isColorExpanded = true;
                            isSizeExpanded = false;
                          });
                        },
                        child: new Container(
                          margin: new EdgeInsets.only(left: _MARGIN_MEDIUM),
                          height: _FILTER_ARROW_HEIGHT,
                          child: new Image.asset(
                            "assets/images/triangle_down.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          'Size',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: _TEXT_SIZE_FILTER_TYPE,
                            letterSpacing: 0.69,
                            fontFamily: 'Helvetica_neue_medium',
                          ),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSizeExpanded) {
                              isCategoryExpanded = false;
                              isBrandExpanded = false;
                              isColorExpanded = false;
                              isSizeExpanded = false;
                            }
                            isCategoryExpanded = false;
                            isBrandExpanded = false;
                            isColorExpanded = false;
                            isSizeExpanded = true;
                          });
                        },
                        child: new Container(
                          margin: new EdgeInsets.only(left: _MARGIN_MEDIUM),
                          height: _FILTER_ARROW_HEIGHT,
                          child: new Image.asset(
                            "assets/images/triangle_down.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // filter for tablet

          (isCategoryExpanded)
              ? new Container(
                  alignment: Alignment.centerRight,
                  height: _CONTAINER_HEIGHT,
                  child: new ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: _kCategoryTiles.map((_FilterItemTile filterItem) {
                      return new Container(
                        padding: new EdgeInsets.only(
                            left: _PADDING_SMALL, right: _PADDING_SMALL),
                        alignment: Alignment.centerRight,
                        child: new Text(
                          filterItem.itemName,
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: _TEXT_SIZE_FILTER_ITEM,
                            fontFamily: 'helvetica_neue_medium',
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              : (isBrandExpanded)
                  ? new Container(
                      alignment: Alignment.centerRight,
                      height: _CONTAINER_HEIGHT,
                      child: new ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children:
                            _kBrandTiles.map((_FilterItemTile filterItem) {
                          return new Container(
                            padding: new EdgeInsets.only(
                                left: _PADDING_SMALL, right: _PADDING_SMALL),
                            alignment: Alignment.centerRight,
                            child: new Text(
                              filterItem.itemName,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: _TEXT_SIZE_FILTER_ITEM,
                                fontFamily: 'helvetica_neue_medium',
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  : (isColorExpanded)
                      ? new Container(
                          alignment: Alignment.centerRight,
                          height: _CONTAINER_HEIGHT,
                          child: new ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children:
                                _kColorTiles.map((_FilterItemTile filterItem) {
                              return new Container(
                                child: new GridTile(
                                  child: new Container(
                                    alignment: Alignment.centerRight,
                                    margin:
                                        new EdgeInsets.all(_MARGIN_EXTRA_SMALL),
                                    child: new Image.asset(
                                      filterItem.itemName,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      : (isSizeExpanded)
                          ? new Container(
                              alignment: Alignment.centerRight,
                              height: _CONTAINER_HEIGHT,
                              child: new ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: _kSizeTiles
                                    .map((_FilterItemTile filterItem) {
                                  return new Container(
                                    padding: new EdgeInsets.only(
                                        left: _PADDING_SMALL,
                                        right: _PADDING_SMALL),
                                    alignment: Alignment.centerRight,
                                    child: new Text(
                                      filterItem.itemName,
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: _TEXT_SIZE_FILTER_ITEM,
                                        fontFamily: 'helvetica_neue_medium',
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            )
                          : new Container(),
        ],
      ),
    );
  }

  Widget _buildGridListItem(Item item) {
    return new Container(
      child: new GestureDetector(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: _PRODUCT_IMAGE_HEIGHT,
              width: _PRODUCT_IMAGE_WIDTH,
              child: new Image.asset(
                item.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_LARGE),
              child: new Text(
                item.itemName,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: _TEXT_SIZE_PRODUCT_NAME,
                  fontFamily: 'helvetica_neue_medium',
                  letterSpacing: 0.56,
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_SMALL),
              child: new Text(
                item.itemDescription,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: _TEXT_SIZE_PRODUCT_COST,
                  fontFamily: 'helvetica_neue_light',
                  letterSpacing: 0.56,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new ProductDetailPage()),
          );
        },
      ),
    );
  }

  Widget _buildProductList() {
    return new Flexible(
      child: new GridView.count(
        childAspectRatio: .70,
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        children: _items.map((Item item) {
          return new GridTile(
            child: _buildGridListItem(item),
          );
        }).toList(),
      ),
    );
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _TEXT_SIZE_JAHMAIKA = 12.0;
      _TEXT_SIZE_FILTER = 12.0;
      _TEXT_SIZE_FILTER_TYPE = 18.0;
      _TEXT_SIZE_PRODUCT_NAME = 10.0;
      _TEXT_SIZE_PRODUCT_COST = 10.0;
      _PADDING_SMALL = 16.0;
      _PADDING_LARGE = 40.0;
      _MARGIN_EXTRA_SMALL = 14.0;
      _MARGIN_SMALL = 15.0;
      _MARGIN_MEDIUM = 16.0;
      _MARGIN_LARGE = 20.0;
      _PRODUCT_IMAGE_WIDTH = 80.0;
      _PRODUCT_IMAGE_HEIGHT = 150.0;
      _CONTAINER_HEIGHT = 60.0;
      _FILTER_ARROW_HEIGHT = 10.0;
      _TEXT_SIZE_FILTER_ITEM = 13.0;
    } else if (shortestSide >= 600) {
      _TEXT_SIZE_JAHMAIKA = 24.0;
      _TEXT_SIZE_FILTER = 24.0;
      _TEXT_SIZE_FILTER_TYPE = 18.0;
      _TEXT_SIZE_PRODUCT_NAME = 20.0;
      _TEXT_SIZE_PRODUCT_COST = 20.0;
      _PADDING_SMALL = 24.0;
      _PADDING_LARGE = 60.0;
      _MARGIN_EXTRA_SMALL = 24.0;
      _MARGIN_SMALL = 23.0;
      _MARGIN_MEDIUM = 24.0;
      _MARGIN_LARGE = 30.0;
      _PRODUCT_IMAGE_WIDTH = 170.0;
      _PRODUCT_IMAGE_HEIGHT = 250.0;
      _CONTAINER_HEIGHT = 90.0;
      _FILTER_ARROW_HEIGHT = 15.0;
      _TEXT_SIZE_FILTER_ITEM = 13.0;
    }
  }
}

class _ProductListTile {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  _ProductListTile(this.imageUrl, this.itemName, this.itemDescription);
}
