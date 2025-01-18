import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
class Button extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  Button({super.key, required this.text, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        minimumSize: Size(double.infinity, 56),
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
              color: Colors.white, // Text color
              fontSize: 16, // Font size
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );

  }
}