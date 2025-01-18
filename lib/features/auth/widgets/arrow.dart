import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;


  Arrow({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: const Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
      size: 24.0,
    ));
}}
