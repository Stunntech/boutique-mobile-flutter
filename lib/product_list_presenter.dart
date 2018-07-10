import 'product_list_contract.dart';
import 'dart:async';

class HomePresenter implements Presenter {
  Model _model;

  View _view;

  HomePresenter(this._model, this._view);

  @override
  Future viewDisplayed() async {
    List<Item> items = await _model.getItems();
    _view.showItems(items);
    /*  for (var item in items) {
      _view.showImageForItem(await _model.getImageForItem(item));
    }*/
  }
}
