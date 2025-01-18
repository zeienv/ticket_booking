
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
class Bottom extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  Bottom({super.key, required this.text, required this.onPressed, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  AppColors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}
