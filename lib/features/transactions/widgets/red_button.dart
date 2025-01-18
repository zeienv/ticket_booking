


import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';



class AppButtonWidgets {

  static Widget redButton(final VoidCallback onPressed, Widget child) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFFCE9E9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: child
      ),
    );
  }

  static Widget longButton(final VoidCallback onPressed, Widget child) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: child
      ),
    );
  }

  static Widget whiteButton(final VoidCallback onPressed, Widget child) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
          width: 400,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: child
      ),
    );
  }

}
