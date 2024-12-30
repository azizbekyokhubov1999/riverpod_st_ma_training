import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/poduct.dart';

class CartNotifier extends Notifier<Set<Product>> {
  //initial value
  @override
  Set<Product> build() {
    return {
      Product(
          id: "4",
          title: "Red Backpack",
          price: 14,
          image: "assets/products/backpack.png"
      )
    };
  }
    //methods to update state
  void addProduct(Product product){
    if(!state.contains(product)){
      state = {...state, product};
    }
  }

  void removeProduct(Product product){
    if(state.contains(product)){
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});