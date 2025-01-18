import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class AccContainers extends StatelessWidget {
  String? imgUrl;
  String? text;
VoidCallback? onPressed;
   AccContainers({super.key, required this.imgUrl,
     required this.text,
     required this.onPressed,
   });
//
  @override
  Widget build(BuildContext context) {
      return Container(
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.01),
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Image.asset(imgUrl!,
                color: AppColors.blue,
                width: 18,height: 18,
              ),
              SizedBox(width: 8,),
              Text(text!,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
            ],),
            GestureDetector(
              onTap:
                onPressed,
              child: Row(
                children: [
                  Image.asset('assets/images/arrow_forward_ios.png',
                    color: AppColors.grey, width: 14,height: 16,),
               Divider(), ],
              ),
            ),
        ],
        ),
      );
  }
}
