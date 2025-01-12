// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final child;
  const CustomBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on the bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(5, 5),
          ),

          // lighter shadow on the top left
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: SizedBox(child: child),
    );
  }
}
