import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/home_page/widgets/male_female.dart';
import 'package:zs_airways/features/transactions/widgets/red_button.dart';


import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';



class PassengerInfo extends StatelessWidget {
  const PassengerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },

              ),
              SizedBox(height: 22,),
              Text('Passenger Info',style: TextStyle(fontSize:20,
                  color: AppColors.black
              ),),
              SizedBox(height: 14,),
              MaleFemaleSelection(),
              SizedBox(height: 18,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border:   InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Adress',
                    border:   InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ID card number',
                    border:   InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Text('This contact is for e-ticket and refund/rescheduling',
                style: TextStyle(fontSize: 12,
                    color: AppColors.grey),),
              SizedBox(height: 18,),

             AppButtonWidgets.longButton(
                    () {
                  Navigator.pushNamed(context, RouteNames.bookingDetail);
                },
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Save changes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8), // Adds spacing between Text and Icon
                  ],
                ),
              ),

            ]
        ),
      ),
    );
  }
}



