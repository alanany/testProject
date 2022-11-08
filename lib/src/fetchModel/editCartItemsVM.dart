//@dart=2.9
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/productModel.dart';

class AddToCartVM extends GetxController {
  List<Products> lst = List<Products>();

  add(String image, String name) {
    lst.add(Products(image: image, name: name));
    update();
  }

  del(int index) {
    lst.removeAt(index);
    update();
  }
}
