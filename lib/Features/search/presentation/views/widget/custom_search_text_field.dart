import 'package:flutter/material.dart';
class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder:buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: "Search",
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              size: 22,
            ),
            onPressed: (){},

          )
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.white
        )
    );
  }
}
