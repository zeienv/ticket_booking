import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class Textfield extends StatelessWidget {
  final String text;

  Textfield({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Form(
        child: TextFormField(
          style: TextStyle(
            color: AppColors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            labelText: text,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}