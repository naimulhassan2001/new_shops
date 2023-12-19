import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        prefixIcon: Icon(Icons.search),
        // label: Text("Search here")
        hintText: "Search here"
      ),
    );
  }
}
