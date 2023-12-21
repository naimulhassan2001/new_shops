import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 22, left: 8),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFEDF7FF),
                  ),
                  child: Image.asset("assets/icons/fashion1.png"),
                ),
                Text("Apparel")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFEDF7FF),
                  ),
                  child: Image.asset("assets/icons/fashion2.png"),
                ),
                Text("School")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFEDDD),
                  ),
                  child: Image.asset("assets/icons/fashion3.png"),
                ),
                Text("Sports")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFEDDD),
                  ),
                  child: Image.asset("assets/icons/fashion4.png"),
                ),
                Text("Electronic")
              ],
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFEDDD),
                  ),
                  child: Image.asset("assets/icons/all.png"),
                ),
                Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Text("More",))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
