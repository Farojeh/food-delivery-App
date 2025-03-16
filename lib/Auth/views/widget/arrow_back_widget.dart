import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () => GoRouter.of(context).pop(),
        overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0)),
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.04,
              left: MediaQuery.of(context).size.width * 0.055),
          height: 53,
          width: 53,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(colors: [
               const Color(0xffFFD500).withOpacity(0.4),
               const Color(0xffFD6900).withOpacity(0.4)
              ])),
          child:const Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Color(0xffFD6900),
          ),
        ),
      ),
    );
  }
}
