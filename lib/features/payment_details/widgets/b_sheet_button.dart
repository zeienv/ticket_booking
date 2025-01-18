
import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  BottomButton({super.key, required this.text, required this.onPressed, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  const Color(0xFFF2F3F6),
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
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
              color: Colors.black,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}
