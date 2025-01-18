import 'package:flutter/material.dart';
import 'package:zs_airways/features/transactions/widgets/card.dart';
import 'package:zs_airways/features/transactions/widgets/red_button.dart';

import '../../core/constants/colors.dart';
import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
               // imgUrl: "assets/images/arrow_forward_ios.png",
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Transaction Details',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 22,
              ),
              MyCard(),
              SizedBox(height: 14,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                  children: [
                    Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      'Success',
                      style: TextStyle(fontSize: 12,
                          color: AppColors.blue),
                    ),
                  ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Text(
                        'Invoice',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                        ),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Text(
                        'INV23124131332',
                        style: TextStyle(fontSize: 12,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Text(
                        'Transaction Date',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        'Wed, 18 Oct 2024',
                        style: TextStyle(fontSize: 12,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'Paytren',
                        style: TextStyle(fontSize: 12,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('1.Matt Murdock',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey
                          ),),
                          SizedBox(height: 8,),
                          Text('Total',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.grey
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Rp. 210.000',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.black
                            ),),
                          SizedBox(height: 8,),
                          Text('Rp. 210.000',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.grey
                            ),),
                        ],
                      ),
                    ],
                  ),
      
                ],
              ),
              SizedBox(height: 24,),
               // RedButton(text: '', onPressed: (){}, img: ""),
              AppButtonWidgets.redButton(
                    () {
                  Navigator.pushNamed(context, RouteNames.signUp);
                },
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Refund or Reschedule Ticket',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8), // Adds spacing between Text and Icon
                   Image.asset('assets/images/red_icon.png')
                  ],
                ),
              ),

              SizedBox(height: 44,),

              AppButtonWidgets.longButton(
                    () {
                  Navigator.pushNamed(context, RouteNames.signUp);
                },
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8), // Adds spacing between Text and Icon
                    Icon(Icons.check_circle, color: Colors.white),
                  ],
                ),
              ),

            ],
          ),
          ),
        ),
      ),
    );
  }
}



