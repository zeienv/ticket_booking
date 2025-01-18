import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
class GreyButton extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  String? img;
  GreyButton({super.key, required this.text, required this.onPressed, required this.img});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xfF2F3F6),
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(img!,
            height: 18,
            width: 18,
            color: AppColors.blue,),
          const SizedBox(width: 8),
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