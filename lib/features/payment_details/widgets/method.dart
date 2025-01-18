import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class Method extends StatelessWidget {
  String? imgurl;
  String? text1;
  String? text2;
  String? text3;
  String? icon1;
  String? add;
  Method({super.key, required this.text1, required this.text2, required this.text3,
    required this.imgurl, required this.icon1, required this.add});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imgurl!,
            width: 25,
            height: 25,),
          // SizedBox(width: 10,),
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1!,
                style: TextStyle(fontSize: 18,
                    color: AppColors.black),),
              Text(text3!,
                style: TextStyle(fontSize: 14,
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
            width: 10,
          ),
          Text(add!,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.blue
            ),)
        ],

      ),
    );
  }
}
