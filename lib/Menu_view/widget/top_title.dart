import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopTitle extends StatelessWidget {
  final String title ;
  const TopTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
           const Text(
              "find and order best food for you",
              style: TextStyle(
                  fontSize: 9,
                  color: Colors.white60,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ],
    );
  }
}
