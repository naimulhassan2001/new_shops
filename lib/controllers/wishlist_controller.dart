
import 'package:get/get.dart';
import '../utils/images_constent.dart';

class WishlistController extends GetxController {



  RxList wishList = [
    {
      "name" : "Air Pods max by Apple",
      "image" : ImagesContents.airPods,
      "variant" : "Grey",
      "price" : "1999,99",
    },
    {
      "name" : "Monitor LG 22 inc 4k",
      "image" : ImagesContents.monitor,

      "variant" : "120 Fps",
      "price" : "299,99",
    },
    {
      "name" : "Earphones for monitor",
      "image" : ImagesContents.earPhone,

      "variant" : "Colbo",
      "price" : "199,99",
    },
  ].obs ;


}