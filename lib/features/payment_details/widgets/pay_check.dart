import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class Checker extends StatelessWidget {
  String? imgurl;
  String? text1;
  String? text2;
  String? icon1;
  String? icon2;
   Checker({super.key, required this.text1, required this.text2,
  required this.imgurl, required this.icon1, required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Image.asset(imgurl!,
        width: 35,
        height: 25,),
         // SizedBox(width: 10,),
          Column(
            children: [
              Text(text1!,
              style: TextStyle(fontSize: 18,
              color: AppColors.black),),

              Row(
                children: [
                  Image.asset(icon1!,
                  width: 15, height: 15,),
                  SizedBox(width: 10,),
                  Text(text2!,
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.grey
                  ),)
                ],
              ),

            ],
          ),
          const SizedBox(
            width: 110,
          ),
          Image.asset(icon2!,
            width: 20, height: 20,),
        ],
      ),
    );
  }
}
