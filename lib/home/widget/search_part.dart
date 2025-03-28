import 'package:advanced_project/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchPart extends StatelessWidget {
  final double? height;
  final Color color ;
  const SearchPart({super.key, this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white.withOpacity(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 0,
        child: CustomTextField(
          height: height,
          onChanged: (value) {},
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
          inputborder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15)
        ),
              borderSide: const BorderSide(color: Colors.black38, width: 0.3)),
          hint: "  Search what you want",
          hintcolor: Colors.black54,
          hintsize: 13,
          backgroundcolor:color,
        ));
  }
}
