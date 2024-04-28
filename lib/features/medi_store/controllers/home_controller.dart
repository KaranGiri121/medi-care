import 'dart:developer';

import 'package:get/get.dart';
import 'package:medi_care/features/medi_store/model/product_model.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  Rx<int> slideIndex = 0.obs;
  final productAdded = {}.obs;
  final products = productList;
  final favoriteProduct = {}.obs;

  // RxBool fav=true.obs;

  void updatePageIndex(index) {
    slideIndex.value = index;
  }

  void addProduct(Product product) {
    if (productAdded.containsKey(product)) {
      productAdded[product] += 1;
    } else {
      productAdded[product] = 1;
    }
  }

  void removeProduct(Product product) {
    if (productAdded.containsKey(product) && productAdded[product] == 1) {
      productAdded.removeWhere((key, value) => key == product);
    }
    else {
      productAdded[product] -= 1;
    }
  }

  Function(Product product) get quantity =>(product) {
    if (productAdded[product] == null) {
      return 0;
    }
    return productAdded[product];
  };

  RxInt get favorite {
    for (int i = 0; i < products.length; i++) {
      if (products[i].favorite.value) {
        favoriteProduct[products[i]] = 1;
      }
    }
    return favoriteProduct.length.obs;
  }

  void check() {
    log("Check");
    log(productAdded.length.toString());
    productAdded.forEach((key, value) {
      log(key.price.runtimeType.toString());
    });
  }

  RxString get cartPrice {
    int cartPrice = 0;
    productAdded.forEach((key, value) {
      cartPrice = cartPrice + (key.price as int) * (value as int);
    });
    return cartPrice
        .toString()
        .obs;
  }

  void removeFavorite(Product product) {

    if (favoriteProduct.containsKey(product)) {
      products
          .singleWhere((element) => element == product)
          .favorite
          .value =
      false;
      favoriteProduct.removeWhere((key, value) => key == product);
    }
  }
}
