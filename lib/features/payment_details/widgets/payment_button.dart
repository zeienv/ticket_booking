
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
class PaymentButton extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  String? img;
  PaymentButton({super.key, required this.text, required this.onPressed, required this.img});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
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
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(img!,
            height: 24,
            width: 24,)
        ],
      ),
    );
  }
}
