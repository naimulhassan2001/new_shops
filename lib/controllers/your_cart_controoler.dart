

import 'package:get/get.dart';
import 'package:new_shops/utils/name_constents.dart';

import '../utils/images_constent.dart';

class CartController extends GetxController {



  RxList cartList = [
    {
      "name" : "Air Pods max by Apple",
      "image" : ImagesContents.airPods,
      "variant" : "Grey",
      "price" : "1999,99",
      "quantity" : "1",

    },
    {
      "name" : "Monitor LG 22 inc 4k",
      "image" : ImagesContents.monitor,

      "variant" : "120 Fps",
      "price" : "299,99",
      "quantity" : "1",

    },
    {
      "name" : "Earphones for monitor",
      "image" : ImagesContents.earPhone,

      "variant" : "Colbo",
      "price" : "199,99",
      "quantity" : "1",

    },
  ].obs ;


}