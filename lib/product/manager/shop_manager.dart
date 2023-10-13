// ignore_for_file: avoid_print

import 'package:bloc_try_example_17_09_2023/product/model/hamidye_Service_Model.dart';
import 'package:flutter/material.dart';

class ShopManager extends ChangeNotifier {
  List<Hamidye> shopPhotoItems = [];
  double totalMoney = 0;

  void sumtotalMoney() {
    totalMoney = shopPhotoItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.value * element.count);
    notifyListeners();
  }

  void addShopItem(Hamidye model) {
    model.count++;
    shopPhotoItems.add(model);
    sumtotalMoney();
    notifyListeners();
  }

  void removeShopItem(Hamidye model) {
    model.count = 0;
    shopPhotoItems.remove(model);
    sumtotalMoney();
    notifyListeners();
  }
}
