
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
class SkipButton extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  SkipButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
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
              color: Colors.black, // Text color
              fontSize: 16, // Font size
            ),
          ),

        ],
      ),
    );

  }
}
