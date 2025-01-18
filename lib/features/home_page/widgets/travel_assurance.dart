import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grey_button.dart';


class TravelAssurance extends StatelessWidget {
  const TravelAssurance({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1st row 125
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/verified_user.png', ),
                  SizedBox(width:  8,),
                  Text('Travel Insurance',
                    style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Text('\$125',
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          // 2nd row
          Row(
            children: [
              Icon(Icons.check_rounded,color: Colors.green,
                size: 12,),
              SizedBox(width:  8,),
              Text('Coverage for Accidents up to \$10000',
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          // 3rd row
          Row(
            children: [
              Icon(Icons.check_rounded,color: Colors.green,
                size: 12,),
              SizedBox(width:  8,),
              Text('Coverage for trip cancellation by passengers up to \$1250',
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          GreyButton(text: 'Add Insurance', onPressed: (){},
              img: 'assets/images/add_circle.png'),
        ],
      ),
    );
  }
}