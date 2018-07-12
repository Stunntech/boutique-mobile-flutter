import 'dart:async';

import 'package:flutter_jahmaika/screens/product_details_screens/product_list_page/product_list_contract.dart';

class HomeModel implements Model {
  List<Item> _items;

  //Map<Item,Map<int, Uint8List>> _images;

  /*@override
  Future<Item> getImageForItem(Item item) async {
    // For this tutorial, we retrieve images from assets

    Map<int, Uint8List> imagesForItem = new Map<int, Uint8List>();

    if (item.numImages > 0) {
      // For now, we get the first image only
      Uint8List firstImageForItem = (await rootBundle.load('assets/1.png')).buffer.asUint8List();
      imagesForItem.putIfAbsent(1, () => firstImageForItem);
      _images.putIfAbsent(item, () => imagesForItem);
      item.currentImage = firstImageForItem;
      item.currentImageNumber = 1;
    }

    return item;
  }*/

  @override
  Future<List<Item>> getItems() async {
    // For this tutorial, we simulate a delay as you would get when calling a backend
    await new Future.delayed(new Duration(seconds: 2));

    // For this tutorial, we use hard coded data
    _items = new List<Item>();
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(new Item('assets/images/product_3.png', 'Novelty ', "\$ 14.25"));
    _items
        .add(new Item('assets/images/product_4.png', 'Harajuku ', '\$ 16.25'));
    _items.add(new Item('assets/images/product_3.png', 'Novelty ', "\$ 14.25"));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));
    _items.add(
        new Item('assets/images/product_2.png', 'Harajuku shirt ', '\$ 16.25'));

    return _items;
  }
}
