import 'package:flutter/widgets.dart';

import '../../../utils/images_constent.dart';
import 'add_to_cart.dart';

class RecentProductGirdView extends StatelessWidget {
  const RecentProductGirdView({super.key});

  // List RecentProducts = [
  //   {"name" : }
  // ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: GridView.count(
          crossAxisCount:2,
         children: [
           Column(
             children: [
               Expanded(
                 flex: 4,
                 child: Image.asset(ImagesContents.monitor),
               ),
               Expanded(
                 flex: 5,
                 child: Column(
                   children: [
                     const Text("Monitor LG 22'"),
                     const Text("199.00"),
                     AddToCart(),
                   ],
                 ),
               ),
             ],
           ),



           Column(
             children: [
               Expanded(
                 flex: 4,
                 child: Image.asset("${ImagesContents.mug}"),
               ),
               Expanded(
                 flex: 5,
                 child: Column(
                   children: [
                     const Text("Monitor LG 22'"),
                     const Text("199.00"),
                     AddToCart(),
                   ],
                 ),
               ),
             ],
           ),

           Column(
             children: [
               Expanded(
                 flex: 4,
                 child: Image.asset("${ImagesContents.earphone}"),
               ),
               Expanded(
                 flex: 5,
                 child: Column(
                   children: [
                     Text("Monitor LG 22'"),
                     Text("199.00"),
                     AddToCart(),
                   ],
                 ),
               ),
             ],
           ),


           Column(
             children: [
               Expanded(
                 flex: 4,
                 child: Image.asset("${ImagesContents.earphones}"),
               ),
               Expanded(
                 flex: 5,
                 child: Column(
                   children: [
                     Text("Monitor LG 22'"),
                     Text("199.00"),
                     AddToCart(),
                   ],
                 ),
               ),
             ],
           ),


         ],

      ),
    );
  }
}
