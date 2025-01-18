import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Arrow2 extends StatelessWidget {
  final VoidCallback onPressed;


  Arrow2({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: const Icon(
      Icons.arrow_back_ios,
      color: Colors.white,
      size: 28.0,
    ));
  }}

