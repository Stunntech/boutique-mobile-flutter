import 'dart:async';

import 'dart:typed_data';

abstract class View {
  void showItems(List<Item> items);

  // void showImageForItem(Item item);
}

abstract class Model {
  Future<List<Item>> getItems();

  // Future<Item> getImageForItem(Item item);
}

class Item {
  final String imageUrl;
  final String itemName;
  final String itemDescription;

  Item(this.imageUrl, this.itemName, this.itemDescription);
}

abstract class Presenter {
  Future viewDisplayed();
}
