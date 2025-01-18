import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/auth/widgets/arrow.dart';
import 'package:zs_airways/features/transactions/widgets/bottom2.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align everything to the left by default
          children: [
            // Icon and Text at the top-left
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Transaction",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //const Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/transaction.png",
                    width: 305,
                    height: 160,
                  ),
                  SizedBox(height: 70,),
                  Text(
                    "Let’s go somewhere",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "After book a trip you can manage orders and \n"
                        "                        see E-ticket here.",
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 18,

                    ),
                  ),
                  SizedBox(height:20),
                  Bottom(text: "Book a trip", onPressed: (){
                    Navigator.pushNamed(context, RouteNames.searchFlight);
                  })

                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
