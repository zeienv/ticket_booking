import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/route/route_names.dart';

class GmailContainer extends StatelessWidget {
  const GmailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 18,),
          //edit
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image.asset('assets/images/Ellipse 21.png', color: Colors.black,),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Matt Murdock',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.contactDetail);
                },
                child: Text('Edit',
                  style: TextStyle(fontSize: 12,
                      color: AppColors.blue), ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/mail.png', color: Colors.blue,),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'imnotdaredevil@mail.com',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Image.asset('assets/images/phone.png', color: Colors.blue,),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '+628123223922',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}