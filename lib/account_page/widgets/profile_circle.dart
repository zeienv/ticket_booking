import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Text('My Profile', style: TextStyle(
              fontSize: 20,
              color: AppColors.white,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 16,),
          //profile
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/account.png'),
                  SizedBox(width: 18,),
                  //name,gmail
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jos Creative',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 4,),
                      Text('josphamdes@gmail.com',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14
                        ),),
                      SizedBox(height: 4,),
                      Text('+1 654 785 4462',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14
                        ),),
                      SizedBox(height: 4,),
                    ],
                  ),
                ],
              ),
              Icon(Icons.edit_note,
                size: 40,
                color: AppColors.white,),
            ],
          ),
        ],
      ),
    );
  }
}
