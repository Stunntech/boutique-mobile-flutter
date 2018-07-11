import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/cart_checkout_screens/shipping_details.dart';
import 'package:flutter_jahmaika/cart_checkout_screens/shopping_cart.dart';
import 'package:flutter_jahmaika/home_screens/gender_selection.dart';
import 'package:flutter_jahmaika/home_screens/item_category_selection.dart';
import 'package:flutter_jahmaika/home_screens/style_selection.dart';
import 'package:flutter_jahmaika/home_screens/top_collection.dart';
import 'package:flutter_jahmaika/login_screens/change_password.dart';
import 'package:flutter_jahmaika/login_screens/create_account_page.dart';
import 'package:flutter_jahmaika/login_screens/reset_password.dart';
import 'package:flutter_jahmaika/login_screens/signin.dart';
import 'package:flutter_jahmaika/login_screens/signup.dart';
import 'package:flutter_jahmaika/login_screens/splash_screen.dart';
import 'package:flutter_jahmaika/product_details_screens/FilterNew.dart';
import 'package:flutter_jahmaika/product_details_screens/product_detail.dart';
import 'package:flutter_jahmaika/product_details_screens/product_list_page/product_list.dart';
import 'package:flutter_jahmaika/sidenavigation_and_tracking_screens/my_orders.dart';
import 'package:flutter_jahmaika/sidenavigation_and_tracking_screens/side_navigation.dart';
import 'package:flutter_jahmaika/sidenavigation_and_tracking_screens/user_profile.dart';

final routes = {
  '/': (BuildContext context) => new SplashScreen(),

  '/createAccountPage': (BuildContext context) => new MyHomePage(),
  '/signUpPage': (BuildContext context) => new SignUpPage(),

  '/shippingDetails': (BuildContext context) => new ShippingDetailPage(),
  '/myShoppingCart': (BuildContext context) => new MyShoppingCartPage(),
  '/genderSelectionPage': (BuildContext context) => new GenderSelectionPage(),
  '/itemCategory': (BuildContext context) => new ItemCategorySelectionPage(),
  '/styleSelectionPage': (BuildContext context) => new StyleSelectionPage(),
  '/topCollectionPage': (BuildContext context) => new TopCollectionPage(),
  //'/changePassword': (BuildContext context) => new ChangePasswordPage(),
  '/resetPassword': (BuildContext context) => new ResetPasswordPage(),
  '/signIn': (BuildContext context) => new SignInPage(),
  '/productList': (BuildContext context) => new ProductListPage(),
  '/filter': (BuildContext context) => new FilterPage(),
  '/productDetailPage': (BuildContext context) => new ProductDetailPage(),
  '/myOrderPage': (BuildContext context) => new MyOrderPage(),
  '/sideNavigationPage': (BuildContext context) => new SideNavigationPage(),
  '/userProfilePage': (BuildContext context) => new UserProfilePage(),
};
