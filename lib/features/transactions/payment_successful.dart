import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/transactions/widgets/red_button.dart';

import '../../core/constants/colors.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.blue,
          body: Column(
            children: [SizedBox(height: 150,),
              Center(child: Image.asset('assets/images/done.png')),
              SizedBox(height: 30,),
              Center(
                child: Text('Order confirmed',
                style: TextStyle(color: Colors.white,
                fontSize: 24),),
              ),
              Center(
                child: Text('Thank you for your order. You will receive \n             email confirmation shortly.',
                  style: TextStyle(color: Colors.white,
                      fontSize: 16),),
              ),
SizedBox(height: 24,),

              AppButtonWidgets.whiteButton(
                    () {
                  Navigator.pushNamed(context, RouteNames.tranDetails);
                },
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'See Details',
                      style: TextStyle(
                        color: Colors.black,
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
      );
  }
}
