import 'package:advanced_project/utils/colors.dart';
import 'package:advanced_project/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchMenuItemView extends StatelessWidget {
  const SearchMenuItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
            color: Colors.white.withOpacity(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 0,
            child: CustomTextField(
              height: 55,
              onChanged: (value) {},
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  size: 28,
                  color: ColorsMe.primary,
                ),
              ),
              inputborder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      const BorderSide(color: Colors.black38, width: 0.3)),
              hint: "  Search what you want",
              hintcolor: Colors.black54,
              hintsize: 13,
              backgroundcolor: Colors.white,
            )));
  }
}
