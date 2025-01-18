import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class HomeOption extends StatelessWidget {
  String? text;
  String? img;
      HomeOption({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F6),

          borderRadius: BorderRadius.circular(12),
        boxShadow: [

          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,

          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 6,),
          Row(
            children: [
              Image.asset(img!),
              SizedBox(width: 25,),
              Text(
                text!,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black
                ),
              ),

            ],
          ),
          SizedBox(height: 6,),

        ],
      ),
    );
  }
}
