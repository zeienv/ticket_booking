import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/intro_page/widgets/button.dart';
import 'package:zs_airways/features/intro_page/widgets/dots.dart';
import 'package:zs_airways/features/intro_page/widgets/skip_button.dart';

import '../../core/route/route_names.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/intro3.png",
              height: 450,

            ),
            const SizedBox(height: 24),
            const Text(
              "Book \n"
                  "Appointment \n"
                  "in Easiest Way!",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),

            ),


            const SizedBox(height: 24),
            StaticDots(),
            const SizedBox(height: 54),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SkipButton(text: "Skip", onPressed: (){

                }),

                IntroButton(text: "Next", onPressed: (){
                  Navigator.pushNamed(context, RouteNames.signIn);
                }, img: "assets/images/arrow_circle_right.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
