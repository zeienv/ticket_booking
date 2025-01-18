import 'package:flutter/material.dart';

class SettingRows extends StatelessWidget {
  final String text;
  final IconData icon;

  SettingRows({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xE5252831),
          ),
        ),
        Icon(
          icon,
          color: const Color(0xE5252831),
          size: 15,
        ),
      ],
    );
  }
}
